import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for ResearchRequest
void main() {
  final instance = ResearchRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ResearchRequest, () {
    // The person's question, in their words.
    // String question
    test('to test the property `question`', () async {
      // TODO
    });

    // ResearchFollowUp previous
    test('to test the property `previous`', () async {
      // TODO
    });

    // A model id to read with (condense long records, check the evidence). Needs the gateway token; without one the parts are quoted as they are.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // A record that is not evidence — the conversation asking.
    // String excludeId
    test('to test the property `excludeId`', () async {
      // TODO
    });

  });
}
