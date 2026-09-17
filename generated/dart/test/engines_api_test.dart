import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for EnginesApi
void main() {
  final instance = Chatpanel().getEnginesApi();

  group(EnginesApi, () {
    // Append a ledger entry for an engine.
    //
    //Future<BuiltMap<String, JsonObject>> enginesAppendEntry(String engineKey, BuiltMap<String, JsonObject> requestBody) async
    test('test enginesAppendEntry', () async {
      // TODO
    });

    // One engine's card, optionally with entries.
    //
    //Future<BuiltMap<String, JsonObject>> enginesCard(String engineKey, { bool entries, int minCalls }) async
    test('test enginesCard', () async {
      // TODO
    });

    // Every engine's card.
    //
    //Future<EnginesList200Response> enginesList({ int minCalls }) async
    test('test enginesList', () async {
      // TODO
    });

  });
}
