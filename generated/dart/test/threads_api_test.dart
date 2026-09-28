import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for ThreadsApi
void main() {
  final instance = Chatpanel().getThreadsApi();

  group(ThreadsApi, () {
    // Ask one of the person's chats and get its answer; the exchange is added to that chat.
    //
    // The chat's own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; `dryRun` returns the chat's title and model for that question without running anything.
    //
    //Future<ThreadsSend200Response> threadsSend(ThreadsSendRequest threadsSendRequest) async
    test('test threadsSend', () async {
      // TODO
    });

  });
}
