import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for GatewayApi
void main() {
  final instance = Chatpanel().getGatewayApi();

  group(GatewayApi, () {
    // The egress audit — which hosts this gateway has contacted and which its config allows.
    //
    // The checkable claim behind \"nothing leaves the machine\". Admin-gated because it names the user's model endpoints.
    //
    //Future<Audit> gatewayAudit() async
    test('test gatewayAudit', () async {
      // TODO
    });

    // Liveness, version and capabilities.
    //
    // Additive fields only. `version` is what every version gate reads.
    //
    //Future<Health> gatewayHealth() async
    test('test gatewayHealth', () async {
      // TODO
    });

    // Exchange a pairing code for the gateway token.
    //
    //Future<Paired> gatewayPair(GatewayPairRequest gatewayPairRequest) async
    test('test gatewayPair', () async {
      // TODO
    });

    // Mint a one-time pairing code (5 minutes, one use, 5 attempts).
    //
    // Only a caller that already holds the token may mint one — pairing widens nothing.
    //
    //Future<PairingCode> gatewayPairCode() async
    test('test gatewayPairCode', () async {
      // TODO
    });

    // What the gateway makes of this caller.
    //
    //Future<WhoAmI> gatewayWhoami() async
    test('test gatewayWhoami', () async {
      // TODO
    });

  });
}
