import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for ReadRestriction
void main() {
  final instance = ReadRestrictionBuilder();
  // TODO add properties to the builder and call build()

  group(ReadRestriction, () {
    // `robots` and `tdm` come only from a hosted (crawler) provider; on the user's machine the reader is a user agent.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // String detail
    test('to test the property `detail`', () async {
      // TODO
    });

  });
}
