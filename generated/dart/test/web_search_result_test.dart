import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for WebSearchResult
void main() {
  final instance = WebSearchResultBuilder();
  // TODO add properties to the builder and call build()

  group(WebSearchResult, () {
    // int rank
    test('to test the property `rank`', () async {
      // TODO
    });

    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // String snippet
    test('to test the property `snippet`', () async {
      // TODO
    });

    // The engine that produced it (SearXNG: the first of `engines`; serp: the engine asked — `duckduckgo`, `startpage`, `bing`, or `api:<id>` for a search API such as `api:exa`). Since gateway 0.79.0 every result carries it; the provider id when nothing finer is known.
    // String engine
    test('to test the property `engine`', () async {
      // TODO
    });

    // The kind of door it came through: `gateway` · `searxng` · `api` (a search API) · `page` (a results page read) · `browser` (the person's own browser). A client meeting a value it does not know shows it as it is. Since gateway 0.79.0.
    // String via
    test('to test the property `via`', () async {
      // TODO
    });

    // SearXNG: every engine that returned it.
    // BuiltList<String> engines
    test('to test the property `engines`', () async {
      // TODO
    });

    // SearXNG's fused score.
    // num score
    test('to test the property `score`', () async {
      // TODO
    });

    // String publishedDate
    test('to test the property `publishedDate`', () async {
      // TODO
    });

    // Present for the top `read` results.
    // ReadResponse read
    test('to test the property `read`', () async {
      // TODO
    });

  });
}
