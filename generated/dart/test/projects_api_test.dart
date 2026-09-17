import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for ProjectsApi
void main() {
  final instance = Chatpanel().getProjectsApi();

  group(ProjectsApi, () {
    // The executive loop appends (status, run.linked, run.spent, decision, report).
    //
    //Future<InlineObject1> projectsAppendEvents(String projectId, TeamsAppendRunEventsRequest teamsAppendRunEventsRequest) async
    test('test projectsAppendEvents', () async {
      // TODO
    });

    // The pool applies at once; `prompt` is the evaluator's, for a structured call.
    //
    //Future<BuiltMap<String, JsonObject>> projectsApplications(String projectId, String jobId, { String reach, String chatModel }) async
    test('test projectsApplications', () async {
      // TODO
    });

    // Open a record (idempotent) or update the page.
    //
    //Future<InlineObject1> projectsCreate(ProjectsCreateRequest projectsCreateRequest) async
    test('test projectsCreate', () async {
      // TODO
    });

    // Remove a project record.
    //
    //Future<PrefsDelete200Response> projectsDelete(String projectId) async
    test('test projectsDelete', () async {
      // TODO
    });

    // Tail a project — hello, replay, then live.
    //
    //Future<String> projectsEvents(String projectId, { int after }) async
    test('test projectsEvents', () async {
      // TODO
    });

    // The record — jobs, runs, spend, decisions, report.
    //
    //Future<InlineObject1> projectsGet(String projectId, { bool events }) async
    test('test projectsGet', () async {
      // TODO
    });

    // Every open posting across projects.
    //
    //Future<ProjectsJobBoard200Response> projectsJobBoard() async
    test('test projectsJobBoard', () async {
      // TODO
    });

    // Projects, newest activity first, jobs counted.
    //
    //Future<ProjectsList200Response> projectsList({ int limit, String status }) async
    test('test projectsList', () async {
      // TODO
    });

    // Move a job along its state machine.
    //
    //Future<InlineObject1> projectsPatchJob(String projectId, String jobId, ProjectsPatchJobRequest projectsPatchJobRequest) async
    test('test projectsPatchJob', () async {
      // TODO
    });

    // Post a job.
    //
    //Future<InlineObject1> projectsPostJob(String projectId, ProjectsPostJobRequest projectsPostJobRequest) async
    test('test projectsPostJob', () async {
      // TODO
    });

    // One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.
    //
    //Future<BuiltMap<String, JsonObject>> projectsRecruit(String projectId, String jobId, ProjectsRecruitRequest projectsRecruitRequest) async
    test('test projectsRecruit', () async {
      // TODO
    });

  });
}
