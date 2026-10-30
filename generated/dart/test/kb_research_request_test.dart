import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for KbResearchRequest
void main() {
  final instance = KbResearchRequestBuilder();
  // TODO add properties to the builder and call build()

  group(KbResearchRequest, () {
    // String question
    test('to test the property `question`', () async {
      // TODO
    });

    // The person's answer to a previous `ask` (a document title, or `all`).
    // String answer
    test('to test the property `answer`', () async {
      // TODO
    });

    // `false`: never pause; search every document.
    // bool ask (default value: true)
    test('to test the property `ask`', () async {
      // TODO
    });

    // A model (from `GET /v1/models`) for the evidence check; token-gated.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // The previous response's `frame`, for a follow-up.
    // BuiltMap<String, JsonObject> previous
    test('to test the property `previous`', () async {
      // TODO
    });

    // Only these documents.
    // BuiltList<String> docs
    test('to test the property `docs`', () async {
      // TODO
    });

  });
}
