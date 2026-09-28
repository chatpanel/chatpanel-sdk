import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for PutRecordsResponse
void main() {
  final instance = PutRecordsResponseBuilder();
  // TODO add properties to the builder and call build()

  group(PutRecordsResponse, () {
    // bool ok
    test('to test the property `ok`', () async {
      // TODO
    });

    // int written
    test('to test the property `written`', () async {
      // TODO
    });

    // BuiltList<String> ids
    test('to test the property `ids`', () async {
      // TODO
    });

    // int sealed_
    test('to test the property `sealed_`', () async {
      // TODO
    });

    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Each written record's new revision (gateway 0.63.0+).
    // BuiltMap<String, int> revs
    test('to test the property `revs`', () async {
      // TODO
    });

    // The current record for each one sent with a `baseRev` that is no longer current — merge and send again.
    // BuiltList<BuiltMap<String, JsonObject>> conflicts
    test('to test the property `conflicts`', () async {
      // TODO
    });

    // The newest revision after this write.
    // int rev
    test('to test the property `rev`', () async {
      // TODO
    });

  });
}
