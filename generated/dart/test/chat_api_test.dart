import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for ChatApi
void main() {
  final instance = Chatpanel().getChatApi();

  group(ChatApi, () {
    // One chat turn through the gateway (OpenAI-compatible).
    //
    // Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. 
    //
    //Future<ChatCompletion> chatCompletions(ChatCompletionRequest chatCompletionRequest, { String xChatPanelRedaction, String xChatPanelRun }) async
    test('test chatCompletions', () async {
      // TODO
    });

  });
}
