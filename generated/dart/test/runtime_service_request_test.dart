import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for RuntimeServiceRequest
void main() {
  final instance = RuntimeServiceRequestBuilder();
  // TODO add properties to the builder and call build()

  group(RuntimeServiceRequest, () {
    // String action (default value: 'start')
    test('to test the property `action`', () async {
      // TODO
    });

    // With `action: model` — a catalogue id or a Hugging Face owner/name.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // With `action: start` (gateway 0.74+) — start a native model past the live-memory check (`GET /v1/runtime/plan`).
    // bool force
    test('to test the property `force`', () async {
      // TODO
    });

  });
}
