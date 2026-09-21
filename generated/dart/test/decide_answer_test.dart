import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for DecideAnswer
void main() {
  final instance = DecideAnswerBuilder();
  // TODO add properties to the builder and call build()

  group(DecideAnswer, () {
    // choice: the option picked; score: a number on the rubric; noul: a boolean.
    // JsonObject value
    test('to test the property `value`', () async {
      // TODO
    });

    // The probability of `value` — read it as one only when the response says `calibrated`.
    // num p
    test('to test the property `p`', () async {
      // TODO
    });

    // The whole distribution.
    // BuiltList<DecideAnswerOption> options
    test('to test the property `options`', () async {
      // TODO
    });

    // The provider's own confidence, when it reports one.
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

  });
}
