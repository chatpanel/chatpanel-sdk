import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for LinkPairRequest
void main() {
  final instance = LinkPairRequestBuilder();
  // TODO add properties to the builder and call build()

  group(LinkPairRequest, () {
    // Absent is a phone.
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // A phone pairing — what the phone calls this computer.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // LinkPairRequestPartner partner
    test('to test the property `partner`', () async {
      // TODO
    });

    // LinkPairRequestScopes scopes
    test('to test the property `scopes`', () async {
      // TODO
    });

    // The partner's one path. Absent is the gateway's own route.
    // String route
    test('to test the property `route`', () async {
      // TODO
    });

    // The https relay for `route relay`.
    // String relay
    test('to test the property `relay`', () async {
      // TODO
    });

    // The owner saw the preview and said yes. Without it nothing is issued.
    // bool confirm
    test('to test the property `confirm`', () async {
      // TODO
    });

  });
}
