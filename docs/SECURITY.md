# Security — what the SDK protects, and what it cannot

## The credential

The gateway's admin surface is guarded by a per-install token it writes to
`~/.chatpanel/gateway-token` (mode 0600). A Node or Python application running as that user
reads it (`fromEnvironment()`); that is the same trust the CLI and the desktop use, and it
is bounded by the OS user boundary — a process that can read the file could already read
everything else the user owns. A browser application cannot read a file and pairs instead:
the user runs `chatpanel-gateway pair`, gets a six-digit code (single use, five minutes,
five attempts), and the application exchanges it for the token with `pair()`.

The SDK's obligations, and the tests that hold them:

| Rule | Test |
|---|---|
| The token is sent only to the configured base URL, as `Authorization: Bearer`. | `the token travels as a bearer header` |
| A non-loopback base URL is refused; with `allowRemote` it must be https. | `refuses a non-loopback base URL` |
| The token appears in no `toString`, `repr`, `inspect` or error message. | `…and is never printed` |
| An application cannot set `Authorization`, `X-ChatPanel-Token`, `Host` or `Content-Length` itself, and no header may contain CR/LF. | `cannot override the managed headers` |
| A token-gated call with no token fails before any bytes are sent. | `fails locally, before any request` |

**Where to keep a paired token:** the platform keychain, or a file with mode 0600. Never in
a URL, a log, localStorage on a shared origin, or source control. `pair()` returns it and
does not store it, so that decision stays with the application.

## The request

- Path parameters are URL-encoded one segment at a time and refused when empty, `.`, `..`,
  or containing a slash — the gateway validates too; this is the half the SDK owns.
- Query parameters the operation does not declare are dropped. What is sent is what is in
  the contract.
- Bodies are JSON-serialised by the SDK; a caller cannot inject raw bytes.
- Every request has a timeout. Retries are for GETs only, at most `retries` (default 2)
  with jitter, on a network error or 502/503. A write — including a chat turn — is never
  replayed: a duplicate memory or a duplicate model call is worse than a failed one.

## The response

- Only `application/json` bodies are parsed; anything else is a `bad_response` error with
  the status, not a thrown parser exception.
- SSE frames are parsed by a reader that buffers on the frame terminator, so a chunk
  boundary inside a frame never yields a half-frame; `data:` that is not JSON is delivered
  as a string (`[DONE]`), never evaluated.
- The gateway's error sentence is surfaced verbatim (it is written for a person); the
  SDK adds the operation id and never a header.

## What the SDK does not do

- It does not redact. Redaction is the gateway's job and happens on the wire between the
  gateway and the model; the SDK sees the user's real text on both sides of the gateway,
  as any local client does. `redaction.preview` shows what the model would receive.
- It does not authenticate the gateway. Loopback is the boundary: the SDK trusts that
  `127.0.0.1:4320` is the user's gateway, as every ChatPanel client does. An integrator who
  tunnels to a remote gateway (`allowRemote`) takes on TLS and host authentication.
- It does not sandbox what a model does with `tools`. A chat request that carries tools
  asks the gateway to relay tool calls back to the caller; running them is the caller's code.

## Reporting

Security reports for ChatPanel: see `SECURITY.md` in the `chatpanel/chatpanel` repository.
