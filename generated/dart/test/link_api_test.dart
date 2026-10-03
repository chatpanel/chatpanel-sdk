import 'package:test/test.dart';
import 'package:chatpanel/chatpanel.dart';


/// tests for LinkApi
void main() {
  final instance = Chatpanel().getLinkApi();

  group(LinkApi, () {
    // The owner's answer — once, this action for the rest of the conversation, everything in it, or no.
    //
    // No answer within the agent's own wait (10 minutes) is a no; revoking the partner denies what it waits on.
    //
    //Future<BrowserAnnounce200Response> linkAnswerApproval(String approvalId, LinkAnswerApprovalRequest linkAnswerApprovalRequest) async
    test('test linkAnswerApproval', () async {
      // TODO
    });

    // What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow.
    //
    // A partner granted `agents` (gateway 0.90.0+) runs them as the owner's own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. 
    //
    //Future<LinkApprovals200Response> linkApprovals() async
    test('test linkApprovals', () async {
      // TODO
    });

    // The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect.
    //
    //Future<String> linkApprovalsStream() async
    test('test linkApprovalsStream', () async {
      // TODO
    });

    // Remove a file from the partner's folder (never a folder).
    //
    //Future<BrowserAnnounce200Response> linkDeleteFile(String path) async
    test('test linkDeleteFile', () async {
      // TODO
    });

    // A partner's own folder, from its side — every file it may hold there, with size and last change.
    //
    // Called BY A PARTNER over Link (`createLinkFetch`), granted `files` (0.92.0+; needs `agents`). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (`data/`), skills (`.claude/skills/`, `.agents/skills/`), subagents (`.claude/agents/_*.md`) and instructions (`CLAUDE.md`, `AGENTS.md`) — never what configures the agent. `GET /v1/link/files/data` lists one root. 
    //
    //Future<LinkListFiles200Response> linkListFiles() async
    test('test linkListFiles', () async {
      // TODO
    });

    // Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first.
    //
    // **A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`.  **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. 
    //
    //Future<LinkPairResult> linkPair({ LinkPairRequest linkPairRequest }) async
    test('test linkPair', () async {
      // TODO
    });

    // Read back a file from the partner's folder — what its agents wrote there.
    //
    // The raw bytes (`application/octet-stream`). `path` is relative to the folder; slashes may be sent encoded.
    //
    //Future<Uint8List> linkReadFile(String path) async
    test('test linkReadFile', () async {
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

    // Put a file in the partner's folder — its data, a skill, a subagent or instructions.
    //
    // The body is the file's bytes. Refused (400): a path outside what a partner may hold (`.claude/settings*.json`, hooks, `.mcp.json`, `.codex/` among them), and a skill or subagent whose front matter would widen what the agent may do (`allowed-tools`, `hooks`, `permissionMode`, `mcpServers`). Refused (403): a path through a link in the folder. Written atomically, readable by the owner alone. Up to the gateway's body limit (413 past it). 
    //
    //Future<LinkPartnerFile> linkWriteFile(String path, MultipartFile body) async
    test('test linkWriteFile', () async {
      // TODO
    });

  });
}
