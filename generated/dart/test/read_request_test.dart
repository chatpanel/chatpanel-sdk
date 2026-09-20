import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for ReadRequest
void main() {
  final instance = ReadRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ReadRequest, () {
    // Absolute http(s) URL of a public page.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // String format (default value: 'markdown')
    test('to test the property `format`', () async {
      // TODO
    });

    // Cut at a section boundary near this length; `truncated` says so.
    // int maxChars
    test('to test the property `maxChars`', () async {
      // TODO
    });

    // A search snippet to stand in for the content when the page cannot be read.
    // String snippet
    test('to test the property `snippet`', () async {
      // TODO
    });

    // One of the providers `GET /v1/capabilities` lists for `read`; 404 otherwise.
    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // Refused before fetching if the provider's record predicts it cannot be met.
    // num budgetMs
    test('to test the property `budgetMs`', () async {
      // TODO
    });

  });
}
