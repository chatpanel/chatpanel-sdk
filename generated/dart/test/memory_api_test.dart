import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for MemoryApi
void main() {
  final instance = Chatpanel().getMemoryApi();

  group(MemoryApi, () {
    // Forget memories matching an id or words.
    //
    //Future<MemoryForget200Response> memoryForget(MemoryForgetRequest memoryForgetRequest) async
    test('test memoryForget', () async {
      // TODO
    });

    // Every memory.
    //
    //Future<MemoryList> memoryList() async
    test('test memoryList', () async {
      // TODO
    });

    // The memories relevant to a text, and a prompt block that carries them.
    //
    //Future<RecallResponse> memoryRecall(RecallRequest recallRequest) async
    test('test memoryRecall', () async {
      // TODO
    });

    // Save a durable fact. Never anonymous — `source` is recorded.
    //
    //Future<RememberResponse> memoryRemember(RememberRequest rememberRequest) async
    test('test memoryRemember', () async {
      // TODO
    });

    // Two-way merge in one round trip — push what you have, receive the full set.
    //
    //Future<MemorySyncResponse> memorySync(MemorySyncRequest memorySyncRequest) async
    test('test memorySync', () async {
      // TODO
    });

  });
}
