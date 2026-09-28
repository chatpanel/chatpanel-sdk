import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for PutRecordsRequest
void main() {
  final instance = PutRecordsRequestBuilder();
  // TODO add properties to the builder and call build()

  group(PutRecordsRequest, () {
    // Who is pushing — recorded on every record.
    // String host
    test('to test the property `host`', () async {
      // TODO
    });

    // int at
    test('to test the property `at`', () async {
      // TODO
    });

    // Whole records or tombstones. A record with `baseRev` (gateway 0.63.0+) is written only while the stored one is at that revision (0 = none stored); otherwise it comes back in `conflicts`. Without it the newer stamp wins.
    // BuiltList<BuiltMap<String, JsonObject>> records
    test('to test the property `records`', () async {
      // TODO
    });

    // Sealed backup entries, opened with the stored passphrase.
    // BuiltList<BuiltMap<String, JsonObject>> entries
    test('to test the property `entries`', () async {
      // TODO
    });

    // Gateway 0.64.0+: a NOTE sent with a `baseRev` that is no longer current is merged against that version (title, tags and text three-way) instead of coming back in `conflicts`; the result is in `merged`.
    // bool merge
    test('to test the property `merge`', () async {
      // TODO
    });

  });
}
