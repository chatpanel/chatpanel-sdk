# chatpanel

A typed client for the local [ChatPanel](https://chatpanel.net) gateway. Zero dependencies;
Python 3.11+; streaming; pairing.

```
pip install chatpanel
```

```python
from chatpanel import ChatPanel

cp = ChatPanel.from_environment()      # token from ~/.chatpanel/gateway-token

# Ask a model — through the gateway, so names/emails/numbers are redacted on the way out
for text in cp.chat.text({"model": "claude", "messages": [{"role": "user", "content": "Summarise our rollback decision."}]}):
    print(text, end="", flush=True)

# Search the user's history (chats, notes, meetings, briefs)
hits = cp.history.smart_search({"question": "what did we decide about the rollback?", "queries": ["rollback decision"]})
record = cp.history.get({"id": hits["results"][0]["id"], "maxChars": 4000})

# Memory
recalled = cp.memory.recall({"text": "how does the user like answers written"})
cp.memory.remember({"text": "Prefers short answers with a code sample", "source": {"via": "my-app"}})  # needs the token

# What the model would receive
preview = cp.redaction.preview({"text": "Call Jordan at 555-0100"})   # "Call [[PERSON_1]] at [[PHONE_1]]"

# Follow a team run live
for frame in cp.teams.run_events(run_id, {"after": -1}):
    print(frame.data["type"])
```

Pairing from an application that cannot read the token file: `cp.pair(code)` exchanges a
code from `chatpanel-gateway pair` and returns the token for you to keep (keychain or a
0600 file — never a log).

Every failure is a `ChatPanelError` with `status`, `type` and `operation`:
`GatewayUnreachableError`, `GatewayTooOldError` (`have`, `need`), `ForbiddenError`,
`NotFoundError`, `InvalidRequestError`.

```python
ChatPanel(
    base_url="http://127.0.0.1:4320",   # loopback only, unless allow_remote=True + https
    token=lambda: keyring.get_password("chatpanel", "gateway"),
    timeout=20.0, retries=2, version_gate=True,
)
```

The surface (`cp.history`, `cp.memory`, …) is generated from the gateway's OpenAPI contract in
the [chatpanel-sdk](https://github.com/chatpanel/chatpanel-sdk) repository; `cp.request(op_id, ...)`
reaches any operation by id. The client is synchronous; wrap calls in `asyncio.to_thread` from
async code.
