import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for A2aApi
void main() {
  final instance = Chatpanel().getA2aApi();

  group(A2aApi, () {
    // Every remote agent this gateway has spoken to.
    //
    // What the audit lists — an agent a person connected is a host this machine talks to.
    //
    //Future<A2aAgents200Response> a2aAgents() async
    test('test a2aAgents', () async {
      // TODO
    });

    // Fetch a remote agent's card, revalidating the one already held.
    //
    // The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.
    //
    //Future<A2aCard200Response> a2aCard(A2aCardRequest a2aCardRequest) async
    test('test a2aCard', () async {
      // TODO
    });

    // Send a message to a remote agent and wait for the answer.
    //
    // The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.
    //
    //Future<A2AResult> a2aMessage(A2ASendRequest a2ASendRequest) async
    test('test a2aMessage', () async {
      // TODO
    });

    // Send a message and stream the answer as it is produced.
    //
    // Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`.
    //
    //Future<String> a2aStream(A2ASendRequest a2ASendRequest) async
    test('test a2aStream', () async {
      // TODO
    });

    // Poll or cancel a task on a remote agent.
    //
    //Future<A2AResult> a2aTask(A2aTaskRequest a2aTaskRequest) async
    test('test a2aTask', () async {
      // TODO
    });

  });
}
