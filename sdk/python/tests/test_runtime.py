import json
import time
import unittest

from chatpanel import (
    OPERATIONS,
    ChatPanel,
    ChatPanelError,
    ForbiddenError,
    GatewayTooOldError,
    GatewayUnreachableError,
    InvalidRequestError,
    NotFoundError,
)

from .scripted_gateway import ScriptedGateway, json_reply


class LoopbackRule(unittest.TestCase):
    def test_refuses_non_loopback_unless_remote_and_https(self):
        with self.assertRaises(InvalidRequestError):
            ChatPanel("http://gateway.example.com:4320")
        with self.assertRaisesRegex(InvalidRequestError, "must be https"):
            ChatPanel("http://gateway.example.com:4320", allow_remote=True)
        with self.assertRaisesRegex(InvalidRequestError, "credentials"):
            ChatPanel("http://user:pw@127.0.0.1:4320")
        self.assertEqual(ChatPanel("https://tunnel.example.com", allow_remote=True).runtime.base_url, "https://tunnel.example.com")
        self.assertEqual(ChatPanel("http://localhost:4320/").runtime.base_url, "http://localhost:4320")
        self.assertEqual(ChatPanel().runtime.base_url, "http://127.0.0.1:4320")


class TokenRule(unittest.TestCase):
    def test_token_gated_call_without_token_fails_locally(self):
        with ScriptedGateway() as gw:
            cp = ChatPanel(gw.url)
            with self.assertRaisesRegex(ForbiddenError, "chatpanel-gateway pair"):
                cp.memory.remember({"text": "x"})
            self.assertEqual([c for c in gw.calls if c["path"] != "/health"], [])

    def test_token_is_sent_and_never_printed(self):
        with ScriptedGateway({"POST /v1/memory/remember": json_reply(200, {"ok": True, "action": "added", "record": {"id": "m", "text": "x"}})}) as gw:
            cp = ChatPanel(gw.url, token=lambda: "sekrit-token-value")
            out = cp.memory.remember({"text": "x", "source": {"via": "sdk"}})
            self.assertEqual(out["action"], "added")
            call = next(c for c in gw.calls if c["path"] == "/v1/memory/remember")
            self.assertEqual(call["headers"]["authorization"], "Bearer sekrit-token-value")
            for s in (repr(cp), str(cp.runtime), repr(cp.runtime)):
                self.assertNotIn("sekrit", s)

    def test_managed_headers_cannot_be_overridden(self):
        with ScriptedGateway() as gw:
            cp = ChatPanel(gw.url, token="t")
            with self.assertRaises(InvalidRequestError):
                cp.history.search({"query": "x"}, headers={"Authorization": "Bearer other"})
            with self.assertRaises(InvalidRequestError):
                cp.chat.completions({"model": "m", "messages": []}, headers={"X-ChatPanel-Run": "a\r\nInjected: yes"})


class ContractRule(unittest.TestCase):
    def test_path_params_encoded_and_query_filtered(self):
        with ScriptedGateway({
            "GET /skills/my%20skill": json_reply(200, {"skill": {"id": "my skill"}}),
            "GET /v1/history/list": json_reply(200, {"ok": True, "total": 0, "items": []}),
        }) as gw:
            cp = ChatPanel(gw.url)
            self.assertEqual(cp.skills.get("my skill")["skill"]["id"], "my skill")
            with self.assertRaises(InvalidRequestError):
                cp.skills.get("../etc")
            with self.assertRaises(InvalidRequestError):
                cp.teams.get_run("a/b")
            cp.history.list({"limit": 5, "type": "note", "smuggled": "x", "offset": 2})
            call = next(c for c in gw.calls if c["path"] == "/v1/history/list")
            self.assertEqual(call["query"], {"limit": "5", "type": "note", "offset": "2"})

    def test_booleans_go_as_1_0(self):
        with ScriptedGateway({"GET /v1/teams/runs/run_1234": json_reply(200, {"ok": True, "run": {"id": "run_1234"}})}) as gw:
            ChatPanel(gw.url).teams.get_run("run_1234", {"events": True})
            self.assertEqual(next(c for c in gw.calls if c["path"].startswith("/v1/teams"))["query"]["events"], "1")


class VersionGate(unittest.TestCase):
    def test_refuses_a_route_the_gateway_predates(self):
        with ScriptedGateway(version="0.9.4") as gw:
            cp = ChatPanel(gw.url)
            with self.assertRaises(GatewayTooOldError) as ctx:
                cp.history.records({"limit": 1})
            self.assertEqual((ctx.exception.have, ctx.exception.need), ("0.9.4", "0.10.0"))
            self.assertFalse(any(c["path"] == "/v1/history/records" for c in gw.calls))
            with self.assertRaises(GatewayTooOldError):
                cp.history.records({"limit": 1})
            self.assertEqual(sum(1 for c in gw.calls if c["path"] == "/health"), 1)
            with self.assertRaises(NotFoundError):
                ChatPanel(gw.url, version_gate=False).history.records({"limit": 1})


class Errors(unittest.TestCase):
    def test_anonymous_agent_turn_is_forbidden_401(self):
        with ScriptedGateway({"POST /v1/chat/completions": json_reply(401, {"error": {"message": "agent destinations require the gateway token", "type": "auth", "code": "agent_lane_token_required"}})}) as gw:
            cp = ChatPanel(gw.url)
            with self.assertRaises(ForbiddenError) as ctx:
                cp.chat.completions({"model": "codex", "messages": []})
            self.assertEqual(ctx.exception.status, 401)
            with self.assertRaises(ForbiddenError):
                list(cp.chat.text({"model": "codex", "messages": []}))

    def test_gateway_words_status_and_type(self):
        with ScriptedGateway({
            "GET /v1/history/get": json_reply(404, {"error": {"message": "no such record", "type": "not_found"}}),
            "POST /v1/history/search": json_reply(400, {"error": {"message": "search failed: boom", "type": "search_error"}}),
            "GET /audit": json_reply(403, {"error": "audit: extension origin or gateway token required"}),
        }) as gw:
            cp = ChatPanel(gw.url, token="wrong")
            with self.assertRaises(NotFoundError) as ctx:
                cp.history.get({"id": "nope"})
            self.assertEqual((str(ctx.exception), ctx.exception.operation), ("no such record", "history.get"))
            with self.assertRaises(ChatPanelError) as ctx:
                cp.history.search({"query": "x"})
            self.assertEqual((ctx.exception.status, ctx.exception.type), (400, "search_error"))
            with self.assertRaisesRegex(ForbiddenError, "gateway token required"):
                cp.gateway.audit()

    def test_get_retries_a_503_but_a_write_is_never_replayed(self):
        n = {"get": 0, "post": 0}

        def flaky(h, call):
            n["get"] += 1
            h.send_json(503 if n["get"] == 1 else 200, {"error": "warming up"} if n["get"] == 1 else {"ok": True, "memories": []})

        def busy(h, call):
            n["post"] += 1
            h.send_json(503, {"error": "busy"})

        with ScriptedGateway({"GET /v1/memory/list": flaky, "POST /v1/history/search": busy}) as gw:
            cp = ChatPanel(gw.url)
            self.assertEqual(cp.memory.list()["memories"], [])
            self.assertEqual(n["get"], 2)
            with self.assertRaises(ChatPanelError) as ctx:
                cp.history.search({"query": "x"})
            self.assertEqual((ctx.exception.status, n["post"]), (503, 1))

    def test_hung_gateway_is_unreachable_within_timeout(self):
        def hang(h, call):
            time.sleep(1.0)
            h.send_json(200, {})

        with ScriptedGateway({"GET /v1/memory/list": hang}) as gw:
            cp = ChatPanel(gw.url, retries=0)
            t0 = time.monotonic()
            with self.assertRaisesRegex(GatewayUnreachableError, "0.15 s"):
                cp.memory.list(timeout=0.15)
            self.assertLess(time.monotonic() - t0, 2.0)
        with self.assertRaises(GatewayUnreachableError):
            ChatPanel("http://127.0.0.1:1", retries=0).memory.list()


class Streaming(unittest.TestCase):
    def test_chat_stream_split_frames_done_and_text(self):
        frame = lambda c: f"data: {json.dumps({'id': 'c', 'object': 'chat.completion.chunk', 'choices': [{'index': 0, 'delta': {'content': c}}]})}\n\n"
        usage = f"data: {json.dumps({'id': 'c', 'object': 'chat.completion.chunk', 'choices': [], 'usage': {'total_tokens': 3}})}\n\n"
        all_ = frame("Hel") + frame("lo") + usage + "data: [DONE]\n\n" + frame("never")
        cut = all_.index("lo") + 1
        with ScriptedGateway({"POST /v1/chat/completions": lambda h, call: h.send_sse([all_[:cut], all_[cut:]])}) as gw:
            cp = ChatPanel(gw.url)
            frames = list(cp.chat.completions_stream({"model": "m", "messages": [{"role": "user", "content": "hi"}]}))
            self.assertEqual(len(frames), 3)
            self.assertEqual(frames[2].data["usage"]["total_tokens"], 3)
            self.assertIs(gw.calls[-1]["body"]["stream"], True)
            self.assertEqual("".join(cp.chat.text({"model": "m", "messages": [{"role": "user", "content": "hi"}]})), "Hello")

    def test_named_events_and_early_break(self):
        with ScriptedGateway({"GET /v1/history/stream": lambda h, call: h.send_sse([
            'event: hello\ndata: {"newest":1,"size":2,"version":"0.11.0"}\n\n',
            ': keep-alive\n\n',
            'event: records\ndata: {"ids":["a"],"at":1}\n\n',
            'event: records\ndata: {"ids":["b"],"at":2}\n\n',
        ])}) as gw:
            seen = []
            for f in ChatPanel(gw.url).history.stream():
                seen.append(f)
                if len(seen) == 2:
                    break
            self.assertEqual([f.event for f in seen], ["hello", "records"])
            self.assertEqual(seen[0].data["version"], "0.11.0")


class Pairing(unittest.TestCase):
    def test_pair_exchanges_code_and_uses_token(self):
        def whoami(h, call):
            has = "authorization" in call["headers"]
            h.send_json(200, {"ok": True, "trust": "token" if has else "local", "paired": has, "version": "0.11.0"})

        with ScriptedGateway({"POST /pair": json_reply(200, {"ok": True, "token": "paired-token"}), "POST /whoami": whoami}) as gw:
            cp = ChatPanel(gw.url)
            self.assertEqual(cp.whoami()["trust"], "local")
            self.assertEqual(cp.pair(" 123456 ")["token"], "paired-token")
            self.assertEqual(next(c for c in gw.calls if c["path"] == "/pair")["body"]["code"], "123456")
            self.assertEqual(cp.whoami()["trust"], "token")

    def test_raw_escape_hatch(self):
        with ScriptedGateway({"GET /v1/engines": json_reply(200, {"ok": True, "engines": []})}) as gw:
            out = ChatPanel(gw.url).request("engines.list", query={"minCalls": 3})
            self.assertEqual(out["engines"], [])
            self.assertEqual(gw.calls[-1]["query"]["minCalls"], "3")
            self.assertGreaterEqual(len(OPERATIONS), 60)


if __name__ == "__main__":
    unittest.main()
