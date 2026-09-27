import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for BrowserApi
void main() {
  final instance = Chatpanel().getBrowserApi();

  group(BrowserApi, () {
    // The browser says what it offers — its page tool spec and guidance.
    //
    //Future<BrowserAnnounce200Response> browserAnnounce(BrowserAnnounce browserAnnounce) async
    test('test browserAnnounce', () async {
      // TODO
    });

    // Run one page action in the person's browser and wait for its result.
    //
    // Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding. 
    //
    //Future<BrowserCallResult> browserCall(BrowserCall browserCall) async
    test('test browserCall', () async {
      // TODO
    });

    // The browser answers a call it ran. Only the session the call went to may answer it.
    //
    //Future<BrowserAnnounce200Response> browserResult(BrowserResult browserResult) async
    test('test browserResult', () async {
      // TODO
    });

    // Is a browser connected, which one, and the page tool it offers.
    //
    // The spec and guidance are the extension's own — a client hands them to its model as they are.
    //
    //Future<BrowserStatus> browserStatus() async
    test('test browserStatus', () async {
      // TODO
    });

    // The browser's end — `hello` with its session, then a `call` frame per action to run.
    //
    //Future<String> browserStream() async
    test('test browserStream', () async {
      // TODO
    });

  });
}
