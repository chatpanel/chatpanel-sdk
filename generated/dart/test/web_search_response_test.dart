import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for WebSearchResponse
void main() {
  final instance = WebSearchResponseBuilder();
  // TODO add properties to the builder and call build()

  group(WebSearchResponse, () {
    // BuiltList<WebSearchResult> results
    test('to test the property `results`', () async {
      // TODO
    });

    // SearXNG's direct answers, when it had any.
    // BuiltList<String> answers
    test('to test the property `answers`', () async {
      // TODO
    });

    // BuiltList<String> suggestions
    test('to test the property `suggestions`', () async {
      // TODO
    });

    // What was actually asked.
    // BuiltList<String> engines
    test('to test the property `engines`', () async {
      // TODO
    });

    // SearXNG engines that did not answer.
    // BuiltList<String> unresponsive
    test('to test the property `unresponsive`', () async {
      // TODO
    });

    // Layer-1 redaction removed something from the query.
    // bool redacted
    test('to test the property `redacted`', () async {
      // TODO
    });

    // The query as sent, when `redacted`.
    // String query
    test('to test the property `query`', () async {
      // TODO
    });

    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // num ms
    test('to test the property `ms`', () async {
      // TODO
    });

  });
}
