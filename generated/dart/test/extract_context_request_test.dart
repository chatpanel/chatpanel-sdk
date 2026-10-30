import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for ExtractContextRequest
void main() {
  final instance = ExtractContextRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ExtractContextRequest, () {
    // The question the documents are read for — its content words pick the pages of a long document.
    // String question
    test('to test the property `question`', () async {
      // TODO
    });

    // Each document as its bytes (`name` + `data`, optionally `type`) or as the `hash` `/v1/extract` returned for one already open (optionally `name`, the title the block shows).
    // BuiltList<ExtractContextRequestDocumentsInner> documents
    test('to test the property `documents`', () async {
      // TODO
    });

    // The answering model's window in tokens — sizes the share the documents may take. Absent: a small window's share.
    // int window
    test('to test the property `window`', () async {
      // TODO
    });

    // The share outright, in characters; overrides `window`.
    // int budgetChars
    test('to test the property `budgetChars`', () async {
      // TODO
    });

  });
}
