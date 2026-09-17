import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for RedactionApi
void main() {
  final instance = Chatpanel().getRedactionApi();

  group(RedactionApi, () {
    // What the model would receive if this text were sent now.
    //
    // Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.
    //
    //Future<RedactionPreview> redactionPreview(RedactionPreviewRequest redactionPreviewRequest) async
    test('test redactionPreview', () async {
      // TODO
    });

  });
}
