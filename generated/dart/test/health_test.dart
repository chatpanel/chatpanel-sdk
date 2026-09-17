import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for Health
void main() {
  final instance = HealthBuilder();
  // TODO add properties to the builder and call build()

  group(Health, () {
    // bool ok
    test('to test the property `ok`', () async {
      // TODO
    });

    // The gateway's semver; every version gate reads this.
    // String version
    test('to test the property `version`', () async {
      // TODO
    });

    // String backend
    test('to test the property `backend`', () async {
      // TODO
    });

    // Redaction tier.
    // String tier
    test('to test the property `tier`', () async {
      // TODO
    });

    // Present from 0.9.0 — this gateway can pair a client.
    // bool pairing
    test('to test the property `pairing`', () async {
      // TODO
    });

    // A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
    // BuiltMap<String, JsonObject> managed
    test('to test the property `managed`', () async {
      // TODO
    });

    // String managedBy
    test('to test the property `managedBy`', () async {
      // TODO
    });

    // A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
    // BuiltMap<String, JsonObject> bridge
    test('to test the property `bridge`', () async {
      // TODO
    });

    // A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
    // BuiltMap<String, JsonObject> stt
    test('to test the property `stt`', () async {
      // TODO
    });

    // A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
    // BuiltMap<String, JsonObject> tts
    test('to test the property `tts`', () async {
      // TODO
    });

  });
}
