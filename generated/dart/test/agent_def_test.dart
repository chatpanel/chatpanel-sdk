import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for AgentDef
void main() {
  final instance = AgentDefBuilder();
  // TODO add properties to the builder and call build()

  group(AgentDef, () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // String purpose
    test('to test the property `purpose`', () async {
      // TODO
    });

    // String dialect
    test('to test the property `dialect`', () async {
      // TODO
    });

    // The folder it was read from: chatpanel, claude, codex, agents-dir, external.
    // String source_
    test('to test the property `source_`', () async {
      // TODO
    });

    // String label
    test('to test the property `label`', () async {
      // TODO
    });

    // Relative to the root it was found in.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // bool writable
    test('to test the property `writable`', () async {
      // TODO
    });

    // BuiltMap<String, JsonObject> engine
    test('to test the property `engine`', () async {
      // TODO
    });

    // BuiltList<String> grants
    test('to test the property `grants`', () async {
      // TODO
    });

    // BuiltList<String> skills
    test('to test the property `skills`', () async {
      // TODO
    });

    // int promptChars
    test('to test the property `promptChars`', () async {
      // TODO
    });

    // Only on `GET /agent-defs/{agentId}`.
    // String prompt
    test('to test the property `prompt`', () async {
      // TODO
    });

    // What the dialect could not map — an unmapped tool is reported, never widened into a grant.
    // BuiltList<String> warnings
    test('to test the property `warnings`', () async {
      // TODO
    });

    // BuiltMap<String, JsonObject> scanned
    test('to test the property `scanned`', () async {
      // TODO
    });

  });
}
