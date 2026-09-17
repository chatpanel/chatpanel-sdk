# Design — one contract, generated surfaces, hand-written runtimes

## The problem this shape solves

The gateway ships continuously (it self-updated from 0.11.0 to 0.11.1 while this repo was
being written). Clients update slowly. A client library that is typed by hand from the
server's source is out of date the week after it is written, and a library per language
multiplies that by the number of languages. So:

1. **The contract is a file, not a memory.** [`../openapi/chatpanel-gateway.yaml`](../openapi/chatpanel-gateway.yaml)
   describes every operation an application may call: method, path, parameters, body,
   response, auth level, the gateway version that introduced it, and whether it streams.
2. **Surfaces are generated, runtimes are written.** What a method *is* — its path and types —
   needs no judgement and is emitted by a generator. What a call *does* — discovery, auth,
   the loopback rule, SSE parsing, retries, errors — needs judgement and is written once per
   first-class language, in one file, with the rules stated at the top.
3. **Drift is a test failure.** `tools/gen-core.mjs --check` fails when a committed surface
   is stale; `tools/contract.mjs` fails when the gateway's `server.js` serves a route the spec
   does not have, or the CLI calls one. Both run in `npm test`.

## Two kinds of generation

| | First-class (TypeScript, Python) | Long tail (Go, Rust, Java, Kotlin, C#, Ruby, PHP, Swift, Dart) |
|---|---|---|
| Generator | `tools/gen-core.mjs` — ours, ~300 lines, reads the spec through `tools/spec.mjs` | openapi-generator, pinned version in `generators.json`, run by `tools/generate.mjs` |
| Emits | `api.generated.*` (route table + namespaced typed methods) and `types.generated.*` | a complete client: models, API classes, configuration, docs |
| Runtime | hand-written: `runtime.ts` / `_runtime.py` | the generator's own; the rules are documented in `generated/README.md` and applied by the integrator |
| Streaming | `AsyncIterable` / `Iterator` of `SseFrame` with typed frames from `x-chatpanel-frame` | the SSE routes are typed as `text/event-stream` strings; read the body yourself |
| Dependencies | none | the generator's usual (reqwest, okhttp, …) |

Why not openapi-generator for everything? Its TypeScript and Python output carries
dependencies, cannot express the loopback rule or the version gate, and types an SSE route as
a string. The two languages ChatPanel's own clients are written in deserve the runtime that
knows the gateway; the others get a correct, complete client the day the spec changes.

Why not a hosted SDK generator (Stainless, Speakeasy, Fern)? They are good, and the spec is
compatible with them if that is ever wanted. But generation here is offline and reproducible —
the JAR runs on the developer's machine, in CI, with no account and nothing uploaded — which
is the posture the rest of ChatPanel holds.

## Extensions the generators read

| Extension | On | Meaning |
|---|---|---|
| `x-chatpanel-auth` | operation | `open` — any loopback caller; `token` — the gateway token is required. Mirrored in `security` for openapi-generator; the linter fails when the two disagree. |
| `x-chatpanel-since` | operation | The gateway version that introduced the route, when its source says so. The runtime's version gate. |
| `x-chatpanel-stream` | operation | `sse` — always a stream; `sse-when-stream` — a stream when `stream: true` (chat completions). The core generator emits an iterator method (`history.stream`) or a `…Stream` twin (`chat.completionsStream`). |
| `x-chatpanel-frame` | the `text/event-stream` content | The schema of one `data:` frame, so a stream is typed. |

## Method shape (the core generator's convention)

Path parameters first, positional, in path order. Then one input: the request body when the
operation has one, else an object of query parameters (optional when none is required). Then
`opts` — `signal`, `timeoutMs`, `headers`, and `query` for a body operation that also takes
query parameters. Python is the same with `snake_case` names and keyword `headers=` /
`timeout=`.

```ts
cp.history.get({ id, maxChars: 400 })                  // query only
cp.history.search({ query: 'rollback', limit: 5 })     // body
cp.teams.answer(runId, { threadId, text })             // path + body
cp.chat.completions(body, { headers: { 'X-ChatPanel-Redaction': 'off' } })
cp.request('engines.list', { query: { minCalls: 3 } }) // the escape hatch, by operationId
```

## What is deliberately not in the contract

The gateway also serves admin and destructive routes — `POST /config`, `/logs`, `/update`,
`history/clear`, `memory/clear`, the backup-passphrase handoff, the model managers for
dictation and read-aloud. They are not in the SDK. A third-party application should not be
one line away from wiping the user's memory or rewriting their routing table; those belong
to the extension's settings and the CLI, which are first-party. `tools/contract.mjs` carries
the list with a reason per route, and fails when a gateway route is in neither the spec nor
that list — so an omission is a decision, never an oversight.

Dictation (`/stt/sessions`, audio in / SSE out) and read-aloud (`/v1/audio/speech`) are a
later, dedicated surface: they are binary streams and deserve a runtime of their own.

## Keeping it true

- **Change the gateway → change the spec, in the same change.** The hub's `CLAUDE.md`
  consumer table names this repo; `npm run contract` is the check.
- **Additive only.** Never rename or remove an operation or make an optional field
  required. Old clients keep working against new gateways; new clients refuse old gateways
  with the version gate rather than failing obscurely.
- **`info.version` = the gateway version reconciled against.** Bump it when the spec is
  brought up to date with a gateway release, so a reader knows how stale it might be.
- **Verify live before claiming a route works.** The `int64` timestamps and the named
  `ChatContentPart` both came from compiling the generated Go and Rust clients against the
  real gateway — no unit test in the spec would have found either.
