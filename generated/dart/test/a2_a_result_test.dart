import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for A2AResult
void main() {
  final instance = A2AResultBuilder();
  // TODO add properties to the builder and call build()

  group(A2AResult, () {
    // bool ok
    test('to test the property `ok`', () async {
      // TODO
    });

    // A2A returns one or the other; an agent answering at once creates no task.
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // BuiltMap<String, JsonObject> task
    test('to test the property `task`', () async {
      // TODO
    });

    // BuiltMap<String, JsonObject> message
    test('to test the property `message`', () async {
      // TODO
    });

    // The answer as text — artifacts first, then what the agent actually said.
    // String text
    test('to test the property `text`', () async {
      // TODO
    });

    // bool done
    test('to test the property `done`', () async {
      // TODO
    });

    // `answer` for TASK_STATE_INPUT_REQUIRED, `approval` for TASK_STATE_AUTH_REQUIRED, null otherwise.
    // String needs
    test('to test the property `needs`', () async {
      // TODO
    });

  });
}
