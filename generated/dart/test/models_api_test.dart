import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for ModelsApi
void main() {
  final instance = Chatpanel().getModelsApi();

  group(ModelsApi, () {
    // Every model the gateway can route to.
    //
    // Describes the routing table, not the disk: a bridge agent is listed whether or not the CLI is installed. From 0.6.64 each agent carries `available`; from 0.6.66 a cloud model carries `configured: false` when a turn is known to fail for something the user can fix. 
    //
    //Future<ModelList> modelsList() async
    test('test modelsList', () async {
      // TODO
    });

  });
}
