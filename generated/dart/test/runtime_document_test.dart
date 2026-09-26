import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';

// tests for RuntimeDocument
void main() {
  final instance = RuntimeDocumentBuilder();
  // TODO add properties to the builder and call build()

  group(RuntimeDocument, () {
    // the bridge's /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows)
    // BuiltMap<String, JsonObject> sandbox
    test('to test the property `sandbox`', () async {
      // TODO
    });

    // RuntimeDocumentProcesses processes
    test('to test the property `processes`', () async {
      // TODO
    });

    // every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1)
    // BuiltList<BuiltMap<String, JsonObject>> containers
    test('to test the property `containers`', () async {
      // TODO
    });

    // { id, engine, host, at } newest first
    // BuiltList<BuiltMap<String, JsonObject>> refused
    test('to test the property `refused`', () async {
      // TODO
    });

    // RuntimeDocumentBridge bridge
    test('to test the property `bridge`', () async {
      // TODO
    });

    // podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note }
    // BuiltMap<String, JsonObject> engines
    test('to test the property `engines`', () async {
      // TODO
    });

    // Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+).
    // BuiltMap<String, JsonObject> services
    test('to test the property `services`', () async {
      // TODO
    });

    // rerank and decide answered by the gateway itself, the default since gateway 0.57.0 (a container service above is the alternative): per capability { provider (embedded | container | remote | none — who serves it now), model (when embedded), models: [{ id, label, mb, languages, note }] (the curated list a person may pick; the first is the default), threads, state (idle | downloading | loading | ready | down), progress?, error? }. Pick one with POST /config capabilities.<id> { provider: 'embedded', model } or turn it off with { provider: 'none' }.
    // BuiltMap<String, JsonObject> inProcess
    test('to test the property `inProcess`', () async {
      // TODO
    });

  });
}
