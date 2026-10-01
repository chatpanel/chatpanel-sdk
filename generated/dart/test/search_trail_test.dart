import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for SearchTrail
void main() {
  final instance = SearchTrailBuilder();
  // TODO add properties to the builder and call build()

  group(SearchTrail, () {
    // How it ended: `answered` (results came back) · `nothing` (engines answered, none had anything) · `blocked` (every engine asked refused or timed out) · `resting` (nothing was asked: every engine is resting after earlier refusals) · `offline` (every engine failed at the network) · `no-engines`. A client meeting a value it does not know treats it as no results.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // In the order asked: the provider tried first (`searxng`, or each engine and API `serp` asked), then the other provider when the first came back empty.
    // BuiltList<SearchTrailAsk> asked
    test('to test the property `asked`', () async {
      // TODO
    });

    // Engines resting after refusing earlier, and until when.
    // BuiltList<SearchTrailResting> resting
    test('to test the property `resting`', () async {
      // TODO
    });

  });
}
