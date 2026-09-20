import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for ExtractResponse
void main() {
  final instance = ExtractResponseBuilder();
  // TODO add properties to the builder and call build()

  group(ExtractResponse, () {
    // SHA-256 of the bytes — the document's identity for page calls.
    // String hash
    test('to test the property `hash`', () async {
      // TODO
    });

    // What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // int pages
    test('to test the property `pages`', () async {
      // TODO
    });

    // The document's own title, when it declares one; else empty.
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // A PDF with no text layer: its pages are empty and need OCR, which this does not do.
    // bool scanned
    test('to test the property `scanned`', () async {
      // TODO
    });

    // Present on a page call.
    // int page
    test('to test the property `page`', () async {
      // TODO
    });

    // The page's text, on a page call. May be empty.
    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // `chatpanel-extract`.
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
