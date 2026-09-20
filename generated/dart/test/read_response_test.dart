import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for ReadResponse
void main() {
  final instance = ReadResponseBuilder();
  // TODO add properties to the builder and call build()

  group(ReadResponse, () {
    // Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // The URL that was asked for.
    // String requested
    test('to test the property `requested`', () async {
      // TODO
    });

    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // String author
    test('to test the property `author`', () async {
      // TODO
    });

    // As the page declared it (ISO date or datetime when it gave one).
    // String published
    test('to test the property `published`', () async {
      // TODO
    });

    // The hostname of `url`.
    // String site
    test('to test the property `site`', () async {
      // TODO
    });

    // String lang
    test('to test the property `lang`', () async {
      // TODO
    });

    // String format
    test('to test the property `format`', () async {
      // TODO
    });

    // The content, when `format` is markdown.
    // String markdown
    test('to test the property `markdown`', () async {
      // TODO
    });

    // The content, when `format` is text.
    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // Length of the content field.
    // int chars
    test('to test the property `chars`', () async {
      // TODO
    });

    // bool truncated
    test('to test the property `truncated`', () async {
      // TODO
    });

    // BuiltList<ReadSection> sections
    test('to test the property `sections`', () async {
      // TODO
    });

    // When the page was fetched (the cached copy's time on a cache hit).
    // DateTime fetched
    test('to test the property `fetched`', () async {
      // TODO
    });

    // bool cached
    test('to test the property `cached`', () async {
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

    // Set when the page was not read as the article; the content is then the request's `snippet`.
    // ReadRestriction restricted
    test('to test the property `restricted`', () async {
      // TODO
    });

  });
}
