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

    // Packages the admission scanner refused — what is on disk and deliberately not listed.
    //
    // A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of `GET /skills` entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0.
    //
    //Future<SkillsQuarantined200Response> skillsQuarantined({ String workdir }) async
    test('test skillsQuarantined', () async {
      // TODO
    });

  });
}
