# Generated clients

Every directory here is a complete client of [`../openapi/chatpanel-gateway.yaml`](../openapi/chatpanel-gateway.yaml),
produced by [openapi-generator](https://openapi-generator.tech) (version pinned in
[`../generators.json`](../generators.json)) by `npm run gen:all`. **Do not edit these files** —
edit the spec and regenerate. Each directory carries the generator's own README with the
language-specific install and usage.

| Directory | Generator | Import |
|---|---|---|
| `go` | `go` | `github.com/chatpanel/chatpanel-sdk/generated/go` |
| `rust` | `rust` (reqwest, async) | crate `chatpanel` |
| `java` | `java` (native `HttpClient`, Jakarta) | `net.chatpanel:chatpanel-sdk` |
| `kotlin` | `kotlin` (okhttp4) | `net.chatpanel.sdk` |
| `csharp` | `csharp` (net8.0) | `ChatPanel.Sdk` |
| `ruby` | `ruby` | gem `chatpanel` |
| `php` | `php` | `ChatPanel\Sdk` |
| `swift` | `swift6` (async/await) | `ChatPanel` |
| `dart` | `dart-dio` | `chatpanel` |

## The three things a generated client does not do for you

The first-class packages (`../sdk/typescript`, `../sdk/python`) apply these in their runtime.
With a generated client, apply them in your application:

1. **Base URL.** The default server is `http://127.0.0.1:4320` — leave it. The gateway only
   answers on loopback; do not point a generated client at another host over plain http, the
   bearer token would travel in the clear.
2. **The token.** For token-gated operations (`memory.remember`, `memory.forget`,
   `memory.sync`, `history.ingest`, `history.putRecords`, `gateway.pairCode`, `gateway.audit`)
   read `~/.chatpanel/gateway-token` (or `CHATPANEL_GATEWAY_TOKEN`) and pass it as the bearer
   token the way the client's README shows (Go: `context.WithValue(ctx, chatpanel.ContextAccessToken, token)`).
   Never log it.
3. **The version gate.** Each operation's description says "Gateway X+" when the route was
   introduced after the first `/v1` release. Call `GatewayHealth` once and compare `version`
   before using such a route on a gateway you did not install; an older gateway does not
   404 usefully.

## Example: Go

```go
cfg := chatpanel.NewConfiguration()
client := chatpanel.NewAPIClient(cfg)
tok, _ := os.ReadFile(filepath.Join(home, ".chatpanel", "gateway-token"))
ctx := context.WithValue(context.Background(), chatpanel.ContextAccessToken, strings.TrimSpace(string(tok)))

h, _, _ := client.GatewayAPI.GatewayHealth(ctx).Execute()
res, _, _ := client.HistoryAPI.HistorySearch(ctx).SearchRequest(chatpanel.SearchRequest{Query: "rollback"}).Execute()
red, _, _ := client.RedactionAPI.RedactionPreview(ctx).RedactionPreviewRequest(chatpanel.RedactionPreviewRequest{Text: "mail alex.rivera@example.com"}).Execute()
// red.Text == "mail [[EMAIL_1]]"
```

Streaming routes (`chat.completions` with `stream: true`, `history.stream`, `prefs.events`,
`teams.runEvents`, `projects.events`) are `text/event-stream`; read the response body line
by line, split frames on a blank line, and JSON-decode each `data:` payload. The frame
schemas are in the spec under `x-chatpanel-frame`.
