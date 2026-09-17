import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for SkillsApi
void main() {
  final instance = Chatpanel().getSkillsApi();

  group(SkillsApi, () {
    // One skill, with its prompt.
    //
    //Future<SkillsGet200Response> skillsGet(String skillId, { String workdir }) async
    test('test skillsGet', () async {
      // TODO
    });

    // The skills on this machine — with a prompt character count, not the prompt.
    //
    //Future<SkillsList200Response> skillsList({ String workdir }) async
    test('test skillsList', () async {
      // TODO
    });

  });
}
