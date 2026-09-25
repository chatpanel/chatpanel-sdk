import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for A2aCardRequest
void main() {
  final instance = A2aCardRequestBuilder();
  // TODO add properties to the builder and call build()

  group(A2aCardRequest, () {
    // The agent's origin, or a card URL outright.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // Skip the TTL and revalidate — the ETag is still sent.
    // bool force
    test('to test the property `force`', () async {
      // TODO
    });

    // Drop the cached card first.
    // bool forget
    test('to test the property `forget`', () async {
      // TODO
    });

    // An Authorization header value for agents that need one.
    // String auth
    test('to test the property `auth`', () async {
      // TODO
    });

  });
}
