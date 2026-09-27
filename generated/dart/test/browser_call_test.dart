import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for BrowserCall
void main() {
  final instance = BrowserCallBuilder();
  // TODO add properties to the builder and call build()

  group(BrowserCall, () {
    // A page action: open_tab, navigate, read_page, inspect_page, fill_form, click_by_text, screenshot, describe…
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // BuiltMap<String, JsonObject> args
    test('to test the property `args`', () async {
      // TODO
    });

    // What the person asked for — shown to them when the browser asks to be used.
    // String task
    test('to test the property `task`', () async {
      // TODO
    });

    // int timeoutMs
    test('to test the property `timeoutMs`', () async {
      // TODO
    });

  });
}
