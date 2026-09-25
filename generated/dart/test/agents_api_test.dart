import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for AgentsApi
void main() {
  final instance = Chatpanel().getAgentsApi();

  group(AgentsApi, () {
    // Write an agent definition into another tool's folder.
    //
    // Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`.
    //
    //Future<AgentsExportDef200Response> agentsExportDef(AgentExportRequest agentExportRequest) async
    test('test agentsExportDef', () async {
      // TODO
    });

    // What an export would write, and what the target cannot carry — without writing it.
    //
    // A separate call from the export itself, deliberately: \"show me what you are about to do to my Claude Code directory\" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.
    //
    //Future<AgentExportPlan> agentsExportPlan(AgentExportRequest agentExportRequest) async
    test('test agentsExportPlan', () async {
      // TODO
    });

    // One agent definition, prompt included.
    //
    //Future<AgentsGetDef200Response> agentsGetDef(String agentId, { String workdir }) async
    test('test agentsGetDef', () async {
      // TODO
    });

    // The agent definitions on this machine, from every tool that writes one.
    //
    // `.claude/agents/_*.md`, `.codex/agents/_*.toml`, `~/.chatpanel/agents/_*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them.
    //
    //Future<AgentsListDefs200Response> agentsListDefs({ String workdir, String dir }) async
    test('test agentsListDefs', () async {
      // TODO
    });

    // A person rates the agent's work on a run, task or job.
    //
    //Future<BuiltMap<String, JsonObject>> agentsRate(String agentId, AgentsRateRequest agentsRateRequest) async
    test('test agentsRate', () async {
      // TODO
    });

    // One agent's attested scorecard.
    //
    //Future<BuiltMap<String, JsonObject>> agentsScorecard(String agentId) async
    test('test agentsScorecard', () async {
      // TODO
    });

    // Every agent's scorecard.
    //
    //Future<AgentsScorecards200Response> agentsScorecards() async
    test('test agentsScorecards', () async {
      // TODO
    });

  });
}
