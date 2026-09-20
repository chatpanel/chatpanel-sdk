import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for ExtractRequest
void main() {
  final instance = ExtractRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ExtractRequest, () {
    // The file name — its extension helps tell office formats apart.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The client's guess at the type (e.g. `pdf`, `docx`); the bytes decide.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The whole file, base64. At most 64 MB decoded.
    // String data
    test('to test the property `data`', () async {
      // TODO
    });

    // The `hash` an open call returned.
    // String hash
    test('to test the property `hash`', () async {
      // TODO
    });

    // The page to read, 1-based.
    // int page
    test('to test the property `page`', () async {
      // TODO
    });

    // Refused before parsing if the worker's record predicts it cannot be met.
    // num budgetMs
    test('to test the property `budgetMs`', () async {
      // TODO
    });

  });
}
