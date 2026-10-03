import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for LinkApi
void main() {
  final instance = Chatpanel().getLinkApi();

  group(LinkApi, () {
    // Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.
    //
    // **A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`.  **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. 
    //
    //Future<LinkPairResult> linkPair({ LinkPairRequest linkPairRequest }) async
    test('test linkPair', () async {
      // TODO
    });

    // Remove a paired device now — its relay room, its key and its open connection.
    //
    //Future<BrowserAnnounce200Response> linkRemoveDevice(String deviceId) async
    test('test linkRemoveDevice', () async {
      // TODO
    });

    // How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel.
    //
    // Checked, saved in the gateway's config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which.
    //
    //Future<LinkStatus> linkRoute(LinkRouteRequest linkRouteRequest) async
    test('test linkRoute', () async {
      // TODO
    });

    // The Link route and every paired device — phones and partner servers — with what each may reach.
    //
    // No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries `kind: partner`, its `partner.name`, `scopes`, the `route` it was paired on and the `host` it connects to; a phone carries `kind: phone` and follows the gateway's route. Changing the route never moves a partner: one whose tunnel door shut with the route says `routeClosed`. 
    //
    //Future<LinkStatus> linkStatus() async
    test('test linkStatus', () async {
      // TODO
    });

  });
}
