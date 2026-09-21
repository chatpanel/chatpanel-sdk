import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for EventsApi
void main() {
  final instance = Chatpanel().getEventsApi();

  group(EventsApi, () {
    // The gateway's highest `seq` per host — what a client asks for before it pushes.
    //
    //Future<EventsCursor> eventsCursor() async
    test('test eventsCursor', () async {
      // TODO
    });

    // Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.
    //
    // Idempotent on event id, so a retry is free. A `seq` that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in `cursor` (the gateway's highest `seq` per host) and stop re-sending what `rejected` names. At most 2000 events per batch. A gateway without SQLite answers 501.
    //
    //Future<PushEventsResponse> eventsPush(PushEventsRequest pushEventsRequest) async
    test('test eventsPush', () async {
      // TODO
    });

    // The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.
    //
    //Future<EventsPage> eventsSince({ String cursor, int limit, String host }) async
    test('test eventsSince', () async {
      // TODO
    });

    // Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.
    //
    //Future<String> eventsStream({ String cursor }) async
    test('test eventsStream', () async {
      // TODO
    });

  });
}
