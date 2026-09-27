import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for BrowserStatus
void main() {
  final instance = BrowserStatusBuilder();
  // TODO add properties to the builder and call build()

  group(BrowserStatus, () {
    // bool connected
    test('to test the property `connected`', () async {
      // TODO
    });

    // Calls waiting on the browser.
    // int pending
    test('to test the property `pending`', () async {
      // TODO
    });

    // A browser holds the stream but has not announced yet.
    // bool waiting
    test('to test the property `waiting`', () async {
      // TODO
    });

    // BrowserInfo browser
    test('to test the property `browser`', () async {
      // TODO
    });

    // The extension's version.
    // String extension_
    test('to test the property `extension_`', () async {
      // TODO
    });

    // The page tool: { name, description, parameters } — hand it to a model as it is.
    // BuiltMap<String, JsonObject> spec
    test('to test the property `spec`', () async {
      // TODO
    });

    // The guidance that goes with the tool.
    // String system
    test('to test the property `system`', () async {
      // TODO
    });

  });
}
