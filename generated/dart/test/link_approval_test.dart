import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for LinkApproval
void main() {
  final instance = LinkApprovalBuilder();
  // TODO add properties to the builder and call build()

  group(LinkApproval, () {
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The partner whose agent asks.
    // String partner
    test('to test the property `partner`', () async {
      // TODO
    });

    // String device
    test('to test the property `device`', () async {
      // TODO
    });

    // The partner's conversation (`partner.<device>.<thread>`), or the turn's own.
    // String conversation
    test('to test the property `conversation`', () async {
      // TODO
    });

    // Who asks and what kind of action — \"Atlas’s agent asks — run a command?\"
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // The command
    // String body
    test('to test the property `body`', () async {
      // TODO
    });

    // String tool
    test('to test the property `tool`', () async {
      // TODO
    });

    // int createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // When it becomes a no.
    // int expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });

  });
}
