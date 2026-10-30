import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for KbSearchRequest
void main() {
  final instance = KbSearchRequestBuilder();
  // TODO add properties to the builder and call build()

  group(KbSearchRequest, () {
    // String query
    test('to test the property `query`', () async {
      // TODO
    });

    // int limit (default value: 10)
    test('to test the property `limit`', () async {
      // TODO
    });

    // Graph expansion of the best hits; 0 = off.
    // int hops (default value: 1)
    test('to test the property `hops`', () async {
      // TODO
    });

    // Only these documents.
    // BuiltList<String> docs
    test('to test the property `docs`', () async {
      // TODO
    });

    // The caller's own phrasings, searched too.
    // BuiltList<String> queries
    test('to test the property `queries`', () async {
      // TODO
    });

    // `false`: skip the reranker.
    // bool rerank (default value: true)
    test('to test the property `rerank`', () async {
      // TODO
    });

    // num budgetMs
    test('to test the property `budgetMs`', () async {
      // TODO
    });

  });
}
