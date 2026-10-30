import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for KbPassage
void main() {
  final instance = KbPassageBuilder();
  // TODO add properties to the builder and call build()

  group(KbPassage, () {
    // `<doc>#<n>`, or `note:<id>`.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // String doc
    test('to test the property `doc`', () async {
      // TODO
    });

    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // int page
    test('to test the property `page`', () async {
      // TODO
    });

    // int pageEnd
    test('to test the property `pageEnd`', () async {
      // TODO
    });

    // The heading path, ` › `-joined.
    // String section
    test('to test the property `section`', () async {
      // TODO
    });

    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // int chars
    test('to test the property `chars`', () async {
      // TODO
    });

    // The fused rank score (RRF) — only its order means anything.
    // num score
    test('to test the property `score`', () async {
      // TODO
    });

    // Each lane's own score (`text`, `vector`, `rerank`), comparable within one query.
    // BuiltMap<String, num> scores
    test('to test the property `scores`', () async {
      // TODO
    });

    // num rerank
    test('to test the property `rerank`', () async {
      // TODO
    });

    // BuiltList<String> lanes
    test('to test the property `lanes`', () async {
      // TODO
    });

    // For a graph hit: the node(s) it was reached through.
    // BuiltList<String> via
    test('to test the property `via`', () async {
      // TODO
    });

    // As the model is told to write it: `[report.pdf p.12]`.
    // String cite
    test('to test the property `cite`', () async {
      // TODO
    });

    // A note's.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // A note's passage ids.
    // BuiltList<String> cites
    test('to test the property `cites`', () async {
      // TODO
    });

  });
}
