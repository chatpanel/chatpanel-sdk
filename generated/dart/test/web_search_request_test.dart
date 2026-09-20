import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for WebSearchRequest
void main() {
  final instance = WebSearchRequestBuilder();
  // TODO add properties to the builder and call build()

  group(WebSearchRequest, () {
    // String q
    test('to test the property `q`', () async {
      // TODO
    });

    // int limit (default value: 8)
    test('to test the property `limit`', () async {
      // TODO
    });

    // en or en-US; honoured by SearXNG.
    // String lang
    test('to test the property `lang`', () async {
      // TODO
    });

    // A hostname — the site: operator.
    // String site
    test('to test the property `site`', () async {
      // TODO
    });

    // Honoured by SearXNG (time_range); week maps to month.
    // String freshness
    test('to test the property `freshness`', () async {
      // TODO
    });

    // Read the top N results in this request.
    // int read (default value: 0)
    test('to test the property `read`', () async {
      // TODO
    });

    // One of the providers `GET /v1/capabilities` lists for `search`; 404 otherwise.
    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // num budgetMs
    test('to test the property `budgetMs`', () async {
      // TODO
    });

  });
}
