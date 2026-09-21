import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for RuntimeDocumentProcesses
void main() {
  final instance = RuntimeDocumentProcessesBuilder();
  // TODO add properties to the builder and call build()

  group(RuntimeDocumentProcesses, () {
    // every process running for the user — the bridge's (kind agent | warm | mcp | probe) and the gateway's own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1)
    // BuiltList<BuiltMap<String, JsonObject>> all
    test('to test the property `all`', () async {
      // TODO
    });

    // id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env
    // BuiltList<BuiltMap<String, JsonObject>> localMcp
    test('to test the property `localMcp`', () async {
      // TODO
    });

    // A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is.
    // BuiltMap<String, JsonObject> warm
    test('to test the property `warm`', () async {
      // TODO
    });

  });
}
