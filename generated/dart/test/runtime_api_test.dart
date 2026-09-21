import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for RuntimeApi
void main() {
  final instance = Chatpanel().getRuntimeApi();

  group(RuntimeApi, () {
    // Start the container engine (Podman — creates and starts its machine where one is needed).
    //
    // `{ action: 'start' }`. Podman on macOS and Windows runs containers in a machine: made on first start (`podman machine init`), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 
    //
    //Future<RuntimeActionResult> runtimeEngine(String name, { RuntimeEngineRequest runtimeEngineRequest }) async
    test('test runtimeEngine', () async {
      // TODO
    });

    // Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.
    //
    // `{ action: 'start' | 'stop' }`. `start` brings the engine up if it is not, runs the service's container from its kit (SearXNG: `127.0.0.1:8888`, JSON on, the limiter off, a random secret, capabilities dropped; `reranker` on 8889 and `opendecision` on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (`search.searxng.url`; `capabilities.rerank` / `capabilities.decide`, so `/v1/rerank` and `/v1/decide` are served and listed). `stop` stops the container and clears what it set. `{ action: 'model', model }` (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (`GET /v1/runtime` `services.<id>.models`) or a Hugging Face `owner/name` — gated by the container ENGINE's memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 
    //
    //Future<RuntimeActionResult> runtimeService(String id, { RuntimeServiceRequest runtimeServiceRequest }) async
    test('test runtimeService', () async {
      // TODO
    });

    // The runtime — the process sandbox, what is running now, the container engine, the services.
    //
    // One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. 
    //
    //Future<RuntimeDocument> runtimeStatus() async
    test('test runtimeStatus', () async {
      // TODO
    });

  });
}
