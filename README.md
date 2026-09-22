# ChatPanel SDK

Client libraries for the **ChatPanel gateway** — the local privacy proxy that redacts personal
data before a model sees it, routes to the model or coding agent you pick, and holds the
searchable history, durable memory, shared preferences and team/project boards that every
ChatPanel client shares. With an SDK your own application is one more client: it can ask a
model through the redacting proxy, search the user's history, recall and record memory, or
follow a team run — in the language you already use.

**One contract, every language.** [`openapi/chatpanel-gateway.yaml`](openapi/chatpanel-gateway.yaml)
is the source of truth. The TypeScript and Python packages have a hand-written runtime and a
generated surface; the other languages are generated whole with
[openapi-generator](https://openapi-generator.tech). Nothing is typed twice, so a route added
to the contract reaches every language on the next `npm run generate`.

| Language | Package | Where | Status |
|---|---|---|---|
| TypeScript / JavaScript | `@chatpanel/sdk` (npm) | [`sdk/typescript`](sdk/typescript) | first-class — zero dependencies, Node 20+ and browsers, streaming, pairing |
| Python | `chatpanel` (PyPI) | [`sdk/python`](sdk/python) | first-class — zero dependencies, Python 3.11+, streaming, pairing |
| Go | `github.com/chatpanel/chatpanel-sdk/generated/go` | [`generated/go`](generated/go) | generated; builds and verified live |
| Rust | `chatpanel` crate (reqwest, async) | [`generated/rust`](generated/rust) | generated; `cargo check` clean |
| Java, Kotlin, C#, Ruby, PHP, Swift, Dart | see [`generated/`](generated) | | generated from the same contract |

## Sixty seconds

```ts
import { ChatPanel } from '@chatpanel/sdk';

const cp = await ChatPanel.fromEnvironment();            // Node: finds ~/.chatpanel/gateway-token
console.log((await cp.health()).version);                // "0.11.1"

const hits = await cp.history.smartSearch({ question: 'what did we decide about the rollback?' });
const memo = await cp.memory.recall({ text: 'how does the user like answers written' });

for await (const text of cp.chat.text({ model: 'claude', messages: [{ role: 'user', content: 'Summarise the rollback decision.' }] })) {
  process.stdout.write(text);                            // redacted on the way out, restored on the way back
}
```

```python
from chatpanel import ChatPanel

cp = ChatPanel.from_environment()
for text in cp.chat.text({"model": "codex", "messages": [{"role": "user", "content": "hi"}]}):
    print(text, end="", flush=True)
```

The gateway must be running on the same machine (`npm i -g @chatpanel/gateway --ignore-scripts && chatpanel-gateway`,
or the ChatPanel desktop app, which bundles it). Reads on the `/v1` data plane are open to any
local process; writes that change what every client sees (remember, forget, ingest) need the
per-install token — `fromEnvironment()` finds it, a browser client `pair()`s for it.

## Decisions and ranking — the small models

Not every question needs a language model. A **typed decision** — which team, how urgent, is
this spam, is this a complaint — is one forward pass of a small classifier: tens of
milliseconds, on the user's machine, a probability per option. **Ranking** — which of these
twenty passages answers the query — is a cross-encoder, the same way. The gateway runs both as
loopback-only containers (Settings › Runtime; pick the model there, or any Hugging Face id of
the right kind) and serves them at `POST /v1/decide` and `POST /v1/rerank`, which every SDK
carries as `capabilities.decide` / `capabilities.rerank`. `GET /v1/capabilities` says whether
a provider is up.

```ts
const r = await cp.capabilities.decide({
  state: 'Third time my order arrived broken. I want a refund now.',
  questions: {
    department: { type: 'choice', instructions: 'Which team should handle this?',
                  options: [{ value: 'billing', describe: 'payments, invoices, refunds' }, { value: 'technical', describe: 'bugs, outages' }] },
    urgency:    { type: 'score',  instructions: 'How urgent is this?', options: ['not urgent', 'somewhat urgent', 'very urgent'] },
    refund:     { type: 'noul',   instructions: 'Does the writer ask for a refund?' },
  },
});
r.answers.department.value;  // 'billing' — with .p, and .options: the whole distribution
r.answers.refund.value;      // true
r.calibrated;                // false: a zero-shot classifier's p is an ordering, not a probability

const ranked = await cp.capabilities.rerank({ query: 'What is deep learning?', documents: passages, top_n: 5 });
ranked.results;              // [{ index, relevance_score }] best first — indexes into `documents`
```

```python
r = cp.capabilities.decide({"state": text, "questions": {"spam": {"type": "noul", "instructions": "Is this unsolicited promotion?"}}})
if r["answers"]["spam"]["value"]: ...
```

What it is for, with the question shape that fits:

| Use | Shape | Note |
|---|---|---|
| **Routing** — queue, team, workflow | `choice` with a `describe` per option | the classifier reads your criteria, not just the label; run it before any language model sees the ticket |
| **Scoring** — quality, satisfaction, severity | `score` over your rubric | the answer is a position on the rubric (1.7 = between the second and third) plus the distribution |
| **Fraud & risk** — asks for credentials, payment redirect, urgency pressure | several `noul`s in one call | passive, on every message; no language model in the loop, so nothing to prompt-inject |
| **Moderation** — toxic, harassment, off-topic | `choice` over your categories, or a `noul` per policy line | tens of milliseconds, on-device |
| **Recommendation** — the next action | `choice` over the candidates, or `rerank` twenty and take three | |
| **Sentiment & triage** | `choice` / `noul` | built into every ChatPanel client's fast path ("is this email spam?") |
| **Ranking for retrieval** | `rerank` | order search results or a note's sources before a language model reads them |

The rules: `budgetMs` is refused (`503 over_budget`) from the provider's own latency record
before it runs, never missed; no provider is `404 no_provider`; a container that is down is
`503 provider_unavailable`; an answer outside the contract is a `502` at the gateway, never a
bad answer in your code. Any server that speaks TypeSafe's `/v1/systemone` (Jev, OpenDecision,
Laya) or Text Embeddings Inference's `/rerank` can stand behind the same routes — point the
gateway's `capabilities.decide` / `capabilities.rerank` at it; your code does not change.
`npm run conformance -- http://127.0.0.1:4320` checks a server against the contract.

## The rules every SDK follows

These are in the hand-written runtimes (`sdk/typescript/src/runtime.ts`, `sdk/python/chatpanel/_runtime.py`)
and documented for the generated clients in [`generated/README.md`](generated/README.md):

- **Loopback by default.** A base URL on another host is refused unless the integrator opts
  in *and* uses https — the token is a bearer secret and never travels in the clear off-machine.
- **The token is never printed.** Resolved lazily from a source function, attached as a
  header, present in no error, `toString`, `repr` or log line.
- **Only the contract is sent.** Path parameters are one URL-encoded segment each; query
  parameters the operation does not declare are dropped; a token-gated call with no token
  fails locally with a sentence that says how to get one.
- **Version-gated.** Every operation records the gateway version that introduced it
  (`x-chatpanel-since`). The runtime reads `GET /health` once and refuses a call the running
  gateway is too old for — "your gateway is 0.9.4; history.records needs 0.10.0" — instead of
  letting it fall through to the model proxy as "upstream fetch failed".
- **Bounded.** Every request has a timeout; retries are for idempotent GETs only, bounded and
  jittered; a chat POST is never replayed.
- **Typed errors.** `ChatPanelError` with `status`, `type` (the gateway's stable machine word)
  and `operation`; subclasses `GatewayUnreachableError`, `GatewayTooOldError`,
  `ForbiddenError`, `NotFoundError`, `InvalidRequestError`.

Full reasoning: [`docs/DESIGN.md`](docs/DESIGN.md) · threat model and what is deliberately
not in the SDK: [`docs/SECURITY.md`](docs/SECURITY.md).

## Working on this repo

```
npm install                 # tooling only (yaml, openapi-generator-cli); the SDKs have no dependencies
npm run lint                # the contract's structural rules (auth labels, path constraints, dead schemas)
npm run gen:core            # TypeScript + Python surfaces from the spec      (tools/gen-core.mjs)
npm run gen:all             # the long-tail languages via openapi-generator   (tools/generate.mjs; Java 17+)
npm run generate            # all of the above
npm test                    # lint · gen-core --check · root tests · TypeScript suite · Python suite
npm run contract            # drift guard against ../chatpanel-gateway and ../chatpanel-cli
npm run test:live           # read-only checks + one streamed turn against a gateway on 127.0.0.1:4320
```

**Changing the contract** is the only way to change an SDK's surface: edit the spec, `npm run
generate`, commit the spec *and* the regenerated files together. CI fails when a generated
file is stale (`gen-core --check`) and, in the hub, when the gateway serves a route the spec
lacks (`npm run contract`). Contract changes are additive — a new operation, a new optional
field — never a rename or a removal: the gateway ships continuously and clients update slowly.

## Versioning

The contract's `info.version` tracks the gateway version it was last reconciled against
(`0.11.0`). Each package has its own version (`sdk/typescript/package.json`,
`sdk/python/pyproject.toml`); publishing is version-guarded — the same version publishes nothing.

## License

Apache-2.0. The SDKs are meant to be embedded in your application; the gateway and the rest of
ChatPanel are licensed separately.
