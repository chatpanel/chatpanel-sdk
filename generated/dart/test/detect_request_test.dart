import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for DetectRequest
void main() {
  final instance = DetectRequestBuilder();
  // TODO add properties to the builder and call build()

  group(DetectRequest, () {
    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // A model this provider lists; 404 otherwise.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // Keep only these of the model's labels.
    // BuiltList<String> labels
    test('to test the property `labels`', () async {
      // TODO
    });

    // Refused before running if the provider's record predicts it cannot be met.
    // num budgetMs
    test('to test the property `budgetMs`', () async {
      // TODO
    });

    // Return every span the provider finds, second-guessing none (redaction strictness 'strict'). A provider that does not filter ignores it. Since gateway 0.76.0.
    // bool strict
    test('to test the property `strict`', () async {
      // TODO
    });

  });
}
