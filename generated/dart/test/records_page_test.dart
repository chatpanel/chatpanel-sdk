import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for RecordsPage
void main() {
  final instance = RecordsPageBuilder();
  // TODO add properties to the builder and call build()

  group(RecordsPage, () {
    // bool ok
    test('to test the property `ok`', () async {
      // TODO
    });

    // Whole records; a tombstone carries `deletedAt`.
    // BuiltList<BuiltMap<String, JsonObject>> records
    test('to test the property `records`', () async {
      // TODO
    });

    // The cursor for the next page — pass it as `cursor` (or, paging by revision, as `after_rev`); absent on the last page.
    // String next
    test('to test the property `next`', () async {
      // TODO
    });

    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // int newest
    test('to test the property `newest`', () async {
      // TODO
    });

    // The newest revision (gateway 0.63.0+). Each record carries its own `rev` too.
    // int rev
    test('to test the property `rev`', () async {
      // TODO
    });

  });
}
