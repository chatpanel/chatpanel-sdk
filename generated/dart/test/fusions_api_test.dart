import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for FusionsApi
void main() {
  final instance = Chatpanel().getFusionsApi();

  group(FusionsApi, () {
    // Several models as one — the fusions this gateway has.
    //
    // Derived from state (the entity detector's union once a companion is ready, an engine drafting with a second model) and composed by the user (`POST /config { fusions }`, a chat fallback in order). A chat turn names a fallback as `model: \"fusion:<id>\"` and is routed to the first member that is up; `x-chatpanel-fusion` on the response says which. 
    //
    //Future<FusionList> fusionsList() async
    test('test fusionsList', () async {
      // TODO
    });

  });
}
