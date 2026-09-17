import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for TeamsApi
void main() {
  final instance = Chatpanel().getTeamsApi();

  group(TeamsApi, () {
    // A person answers an ask on the board.
    //
    //Future<InlineObject> teamsAnswer(String runId, TeamsAnswerRequest teamsAnswerRequest) async
    test('test teamsAnswer', () async {
      // TODO
    });

    // The running client appends events.
    //
    //Future<InlineObject> teamsAppendRunEvents(String runId, TeamsAppendRunEventsRequest teamsAppendRunEventsRequest) async
    test('test teamsAppendRunEvents', () async {
      // TODO
    });

    // What a client needs to resume a run whose client went away.
    //
    //Future<TeamsCheckpoint200Response> teamsCheckpoint(String runId) async
    test('test teamsCheckpoint', () async {
      // TODO
    });

    // A client takes a stopped or stale run over.
    //
    //Future<InlineObject> teamsClaim(String runId, TeamsClaimRequest teamsClaimRequest) async
    test('test teamsClaim', () async {
      // TODO
    });

    // Open a run record.
    //
    //Future<InlineObject> teamsCreateRun(TeamRunCreate teamRunCreate) async
    test('test teamsCreateRun', () async {
      // TODO
    });

    // Approve or reject a post.
    //
    //Future<InlineObject> teamsDecide(String runId, TeamsDecideRequest teamsDecideRequest) async
    test('test teamsDecide', () async {
      // TODO
    });

    // Remove a run; a live one is stopped first.
    //
    //Future<PrefsDelete200Response> teamsDeleteRun(String runId) async
    test('test teamsDeleteRun', () async {
      // TODO
    });

    // One run, optionally with its events.
    //
    //Future<InlineObject> teamsGetRun(String runId, { bool events }) async
    test('test teamsGetRun', () async {
      // TODO
    });

    // Continue a task on another model.
    //
    //Future<InlineObject> teamsHandoff(String runId, TeamsHandoffRequest teamsHandoffRequest) async
    test('test teamsHandoff', () async {
      // TODO
    });

    // The board — recent runs, newest first.
    //
    //Future<TeamsListRuns200Response> teamsListRuns({ int limit, String team }) async
    test('test teamsListRuns', () async {
      // TODO
    });

    // Post a note to a thread.
    //
    //Future<InlineObject> teamsPost(String runId, TeamsPostRequest teamsPostRequest) async
    test('test teamsPost', () async {
      // TODO
    });

    // A person removes a thread from the board.
    //
    //Future<InlineObject> teamsRemoveThread(String runId, String threadId) async
    test('test teamsRemoveThread', () async {
      // TODO
    });

    // Tail a run — the record first, replay from `after`, then live.
    //
    //Future<String> teamsRunEvents(String runId, { int after }) async
    test('test teamsRunEvents', () async {
      // TODO
    });

    // Ask the running client to stop.
    //
    //Future<InlineObject> teamsStopRun(String runId) async
    test('test teamsStopRun', () async {
      // TODO
    });

  });
}
