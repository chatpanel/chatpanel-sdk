"""A gateway that answers from a script and records every request, so a test can assert what
the SDK SENT — the token header, the encoded path, the query — not only what it got back."""

from __future__ import annotations

import json
import threading
import time
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from typing import Any, Callable, Dict, List
from urllib.parse import parse_qs, urlsplit


class ScriptedGateway:
    def __init__(self, routes: Dict[str, Callable[..., Any]] | None = None, version: str = "0.11.0") -> None:
        self.routes = routes or {}
        self.version = version
        self.calls: List[Dict[str, Any]] = []
        gw = self

        class Handler(BaseHTTPRequestHandler):
            protocol_version = "HTTP/1.1"

            def log_message(self, *a: Any) -> None:  # quiet
                pass

            def _handle(self) -> None:
                u = urlsplit(self.path)
                n = int(self.headers.get("content-length") or 0)
                raw = self.rfile.read(n) if n else b""
                call = {
                    "method": self.command, "path": u.path,
                    "query": {k: v[0] for k, v in parse_qs(u.query).items()},
                    "headers": {k.lower(): v for k, v in self.headers.items()},
                    "body": json.loads(raw) if raw else None,
                }
                gw.calls.append(call)
                key = f"{self.command} {u.path}"
                handler = gw.routes.get(key)
                if handler is None and u.path == "/health":
                    return self.send_json(200, {"ok": True, "version": gw.version})
                if handler is None:
                    return self.send_json(404, {"error": {"message": f"no route {key}", "type": "not_found"}})
                handler(self, call)

            def send_json(self, status: int, obj: Any) -> None:
                data = json.dumps(obj).encode()
                self.send_response(status)
                self.send_header("content-type", "application/json")
                self.send_header("content-length", str(len(data)))
                self.end_headers()
                self.wfile.write(data)

            def send_sse(self, chunks: List[str], delay: float = 0.005) -> None:
                self.send_response(200)
                self.send_header("content-type", "text/event-stream")
                self.send_header("transfer-encoding", "chunked")
                self.end_headers()
                try:
                    for c in chunks:
                        b = c.encode()
                        self.wfile.write(f"{len(b):x}\r\n".encode() + b + b"\r\n")
                        self.wfile.flush()
                        time.sleep(delay)
                    self.wfile.write(b"0\r\n\r\n")
                except BrokenPipeError:
                    pass  # the client broke out of the stream — the SDK closed it, as it should

            do_GET = do_POST = do_PUT = do_DELETE = _handle

        self.server = ThreadingHTTPServer(("127.0.0.1", 0), Handler)
        self.url = f"http://127.0.0.1:{self.server.server_address[1]}"
        self.thread = threading.Thread(target=self.server.serve_forever, daemon=True)
        self.thread.start()

    def close(self) -> None:
        self.server.shutdown()
        self.server.server_close()

    def __enter__(self) -> "ScriptedGateway":
        return self

    def __exit__(self, *a: Any) -> None:
        self.close()


def json_reply(status: int, obj: Any) -> Callable[..., None]:
    return lambda h, call: h.send_json(status, obj)
