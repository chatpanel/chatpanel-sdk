import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for Capability
void main() {
  final instance = CapabilityBuilder();
  // TODO add properties to the builder and call build()

  group(Capability, () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The standard route for this capability on this provider.
    // String route
    test('to test the property `route`', () async {
      // TODO
    });

    // Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those.
    // BuiltList<String> models
    test('to test the property `models`', () async {
      // TODO
    });

    // Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those.
    // BuiltList<String> providers
    test('to test the property `providers`', () async {
      // TODO
    });

    // One of `models`, or of `providers`.
    // String default_
    test('to test the property `default_`', () async {
      // TODO
    });

    // detect: the loaded model's label vocabulary, BIOES prefixes stripped. Empty until a model is loaded.
    // BuiltList<String> labels
    test('to test the property `labels`', () async {
      // TODO
    });

    // detect: the tokenizer's limit; null when effectively unbounded.
    // int maxTokens
    test('to test the property `maxTokens`', () async {
      // TODO
    });

    // A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
    // BuiltMap<String, JsonObject> requirements
    test('to test the property `requirements`', () async {
      // TODO
    });

    // CapabilityStats stats
    test('to test the property `stats`', () async {
      // TODO
    });

    // state (off | loading | downloading | ready | error | external), name, dtype, error…
    // BuiltMap<String, JsonObject> runtime
    test('to test the property `runtime`', () async {
      // TODO
    });

    // stt: the session route for live dictation.
    // String streaming
    test('to test the property `streaming`', () async {
      // TODO
    });

    // tts: the voices route.
    // String voices
    test('to test the property `voices`', () async {
      // TODO
    });

  });
}
