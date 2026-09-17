import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for ChatCompletionRequest
void main() {
  final instance = ChatCompletionRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ChatCompletionRequest, () {
    // A model id from `GET /v1/models`; `claude/opus` names an agent and its model.
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // BuiltList<ChatMessage> messages
    test('to test the property `messages`', () async {
      // TODO
    });

    // bool stream
    test('to test the property `stream`', () async {
      // TODO
    });

    // A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
    // BuiltMap<String, JsonObject> streamOptions
    test('to test the property `streamOptions`', () async {
      // TODO
    });

    // BuiltList<BuiltMap<String, JsonObject>> tools
    test('to test the property `tools`', () async {
      // TODO
    });

    // JsonObject toolChoice
    test('to test the property `toolChoice`', () async {
      // TODO
    });

    // num temperature
    test('to test the property `temperature`', () async {
      // TODO
    });

    // int maxTokens
    test('to test the property `maxTokens`', () async {
      // TODO
    });

  });
}
