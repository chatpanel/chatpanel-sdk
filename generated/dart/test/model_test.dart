import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for Model
void main() {
  final instance = ModelBuilder();
  // TODO add properties to the builder and call build()

  group(Model, () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // String object
    test('to test the property `object`', () async {
      // TODO
    });

    // String ownedBy
    test('to test the property `ownedBy`', () async {
      // TODO
    });

    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // 0.6.64+
    // String providerType
    test('to test the property `providerType`', () async {
      // TODO
    });

    // String api
    test('to test the property `api`', () async {
      // TODO
    });

    // BuiltList<String> endpoints
    test('to test the property `endpoints`', () async {
      // TODO
    });

    // 0.6.64+ for bridge agents — whether the CLI is installed.
    // bool available
    test('to test the property `available`', () async {
      // TODO
    });

    // 0.6.66+ — false when a turn is known to fail for something the user can fix.
    // bool configured
    test('to test the property `configured`', () async {
      // TODO
    });

    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // False when the agent cannot take per-turn tools.
    // bool tools
    test('to test the property `tools`', () async {
      // TODO
    });

    // 0.40.0+ — where the model runs, which is what a privacy ceiling reads: `device` on this machine, `trusted` on the private network, `any` a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is `any`; OpenCode over Ollama is `device`), never where the CLI process runs. Every row is served on the gateway's loopback address, so the address says nothing — read this field.
    // String reach
    test('to test the property `reach`', () async {
      // TODO
    });

  });
}
