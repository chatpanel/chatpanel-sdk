import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for DecideResponse
void main() {
  final instance = DecideResponseBuilder();
  // TODO add properties to the builder and call build()

  group(DecideResponse, () {
    // One per question asked, under the same key.
    // BuiltMap<String, DecideAnswer> answers
    test('to test the property `answers`', () async {
      // TODO
    });

    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // num ms
    test('to test the property `ms`', () async {
      // TODO
    });

    // Whether `p` is a calibrated probability. false for a zero-shot NLI concentration.
    // bool calibrated
    test('to test the property `calibrated`', () async {
      // TODO
    });

  });
}
