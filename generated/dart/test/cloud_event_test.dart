import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for CloudEvent
void main() {
  final instance = CloudEventBuilder();
  // TODO add properties to the builder and call build()

  group(CloudEvent, () {
    // String specversion
    test('to test the property `specversion`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // `urn:chatpanel:host:<host>`
    // String source_
    test('to test the property `source_`', () async {
      // TODO
    });

    // `net.chatpanel.<family>.<kind>`
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // DateTime time
    test('to test the property `time`', () async {
      // TODO
    });

    // String datacontenttype
    test('to test the property `datacontenttype`', () async {
      // TODO
    });

    // int seq
    test('to test the property `seq`', () async {
      // TODO
    });

    // String host
    test('to test the property `host`', () async {
      // TODO
    });

    // String causes
    test('to test the property `causes`', () async {
      // TODO
    });

    // int chatpanelv
    test('to test the property `chatpanelv`', () async {
      // TODO
    });

    // A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
    // BuiltMap<String, JsonObject> data
    test('to test the property `data`', () async {
      // TODO
    });

  });
}
