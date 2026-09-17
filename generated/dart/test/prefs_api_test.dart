import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for PrefsApi
void main() {
  final instance = Chatpanel().getPrefsApi();

  group(PrefsApi, () {
    // Remove one section.
    //
    //Future<PrefsDelete200Response> prefsDelete(String section) async
    test('test prefsDelete', () async {
      // TODO
    });

    // Live — which sections another client wrote.
    //
    //Future<String> prefsEvents() async
    test('test prefsEvents', () async {
      // TODO
    });

    // The shared sections, or only their stamps.
    //
    //Future<Prefs> prefsGet({ String section, bool stamps }) async
    test('test prefsGet', () async {
      // TODO
    });

    // Write sections; per-section last-writer-wins by stamp.
    //
    //Future<PrefsWriteResult> prefsPut(PrefsWrite prefsWrite) async
    test('test prefsPut', () async {
      // TODO
    });

  });
}
