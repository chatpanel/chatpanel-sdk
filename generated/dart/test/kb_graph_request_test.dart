import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for KbGraphRequest
void main() {
  final instance = KbGraphRequestBuilder();
  // TODO add properties to the builder and call build()

  group(KbGraphRequest, () {
    // An entity, section or topic by name (or a node id).
    // String node
    test('to test the property `node`', () async {
      // TODO
    });

    // A second node: the path from `node` to it.
    // String to
    test('to test the property `to`', () async {
      // TODO
    });

    // int hops (default value: 1)
    test('to test the property `hops`', () async {
      // TODO
    });

    // BuiltList<String> kinds
    test('to test the property `kinds`', () async {
      // TODO
    });

    // int limit (default value: 20)
    test('to test the property `limit`', () async {
      // TODO
    });

  });
}
