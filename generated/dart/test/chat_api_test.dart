import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for ChatApi
void main() {
  final instance = Chatpanel().getChatApi();

  group(ChatApi, () {
    // One chat turn through the gateway (OpenAI-compatible).
    //
    // Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace.  **Permission prompts (gateway 0.25.0+).** List a function tool named `permission_prompt` to say your client can answer an agent's \"may I run this?\" — the gateway strips it from what the agent sees and lets the agent ask instead of denying headlessly. The question arrives as a `tool_calls` stop on that tool, its arguments `{ tool, input, description, path, rules }`; answer with a `tool` message whose content is the JSON `{ \"behavior\": \"allow\" | \"deny\", \"scope\": \"once\" | \"chat\", \"message\"?: string }`. Anything else is a deny.  **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (`codex`, `claude`, `opencode`, … — `provider_type: agent` in `GET /v1/models`) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** `{ type: 'auth', code: 'agent_lane_token_required' }`. The SDKs surface that as `ForbiddenError` with `status` 401. 
    //
    //Future<ChatCompletion> chatCompletions(ChatCompletionRequest chatCompletionRequest, { String xChatPanelRedaction, String xChatPanelRun }) async
    test('test chatCompletions', () async {
      // TODO
    });

  });
}
