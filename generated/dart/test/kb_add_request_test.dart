import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for KbAddRequest
void main() {
  final instance = KbAddRequestBuilder();
  // TODO add properties to the builder and call build()

  group(KbAddRequest, () {
    // The file name (with `data`); the title for `text` when none is given.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // A type hint (`pdf`, `docx`); the bytes decide.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // The whole file, base64, at most 64 MB decoded.
    // String data
    test('to test the property `data`', () async {
      // TODO
    });

    // A file or folder on this machine (token-gated).
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // With a folder: walk subfolders.
    // bool recursive (default value: true)
    test('to test the property `recursive`', () async {
      // TODO
    });

    // With a folder: only these extensions (`*.pdf`, `.md`).
    // BuiltList<String> include
    test('to test the property `include`', () async {
      // TODO
    });

    // A public http(s) page, read as Markdown.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // Plain text or Markdown, up to 4 M characters.
    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // Provenance to record on the document (`internal` narrows a turn that uses it).
    // String reach
    test('to test the property `reach`', () async {
      // TODO
    });

  });
}
