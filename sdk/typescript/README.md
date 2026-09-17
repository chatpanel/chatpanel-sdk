# @chatpanel/sdk

A typed client for the local [ChatPanel](https://chatpanel.net) gateway. Zero dependencies;
Node 20+ and modern browsers; streaming; pairing.

```
npm i @chatpanel/sdk
```

```ts
import { ChatPanel } from '@chatpanel/sdk';

const cp = await ChatPanel.fromEnvironment();      // Node: token from ~/.chatpanel/gateway-token

// Ask a model — through the gateway, so names/emails/numbers are redacted on the way out
for await (const text of cp.chat.text({ model: 'claude', messages: [{ role: 'user', content: 'Summarise our rollback decision.' }] })) {
  process.stdout.write(text);
}

// Search the user's history (chats, notes, meetings, briefs)
const { results } = await cp.history.smartSearch({ question: 'what did we decide about the rollback?', queries: ['rollback decision'] });
const record = await cp.history.get({ id: results[0].id, maxChars: 4000 });

// Memory
const { block } = await cp.memory.recall({ text: 'how does the user like answers written' });
await cp.memory.remember({ text: 'Prefers short answers with a code sample', source: { via: 'my-app' } });  // needs the token

// What the model would receive
const { text: safe, count } = await cp.redaction.preview({ text: 'Call Jordan at 555-0100' });  // "Call [[PERSON_1]] at [[PHONE_1]]"

// Follow a team run live
for await (const ev of cp.teams.runEvents(runId, { after: -1 })) console.log(ev.data.type);
```

### In a browser

A browser cannot read the token file. Construct a client, have the user run
`chatpanel-gateway pair` (or open the desktop's pairing screen), and exchange the code:

```ts
const cp = new ChatPanel();                 // http://127.0.0.1:4320
const { token } = await cp.pair(codeTheUserTyped);
// keep `token` somewhere only this user can read; pass it as { token } next time
```

Reads on the `/v1` data plane work without a token; the gateway allows `http://localhost`
origins and anything in its `allowedOrigins`.

### Errors

Every failure is a `ChatPanelError` with `status`, `type` and `operation`:
`GatewayUnreachableError` (not running / timed out), `GatewayTooOldError` (`have`, `need`),
`ForbiddenError` (needs the token), `NotFoundError`, `InvalidRequestError` (refused before
sending — bad base URL, missing path parameter, managed header).

### Options

```ts
new ChatPanel({
  baseUrl: 'http://127.0.0.1:4320',   // loopback only, unless allowRemote + https
  token: () => keychain.get('chatpanel'),   // a string, or a function (sync or async)
  timeoutMs: 20_000,
  retries: 2,                         // GET only
  versionGate: true,                  // refuse routes the running gateway predates
  fetch: customFetch,                 // for tests and proxies
});
```

The surface (`cp.history`, `cp.memory`, …) is generated from the gateway's OpenAPI contract in
the [chatpanel-sdk](https://github.com/chatpanel/chatpanel-sdk) repository; `cp.request(id, args)`
reaches any operation by id.
