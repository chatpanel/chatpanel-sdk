import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for AgentsApi
void main() {
  final instance = Chatpanel().getAgentsApi();

  group(AgentsApi, () {
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
