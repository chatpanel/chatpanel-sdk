"""The transport. One place that knows how to reach the gateway, so the rules below cannot
be forgotten at a call site — every generated method goes through ``request`` or ``stream``.

The rules (the TypeScript runtime states the same ones; keep them in step):

* LOOPBACK BY DEFAULT — a base URL on another host is refused unless ``allow_remote`` is
  set AND the scheme is https, so the bearer token never travels in the clear off-machine.
* THE TOKEN IS NEVER LOGGED — resolved lazily, attached as a header, in no error or repr.
* ONLY THE CONTRACT IS SENT — path parameters are one encoded segment each; undeclared
  query parameters are dropped; a token-gated operation with no token fails here.
* THE VERSION GATE — ``since`` is checked against one cached GET /health first.
* BOUNDED — every request has a timeout; retries are for GETs only; a write is never replayed.
"""

from __future__ import annotations

import json
import os
import random
import re
import time
import urllib.error
import urllib.parse
import urllib.request
from dataclasses import dataclass
from typing import Any, Callable, Dict, Generic, Iterator, Optional, Tuple, TypeVar, Union

from .errors import (
    ChatPanelError,
    ForbiddenError,
    GatewayTooOldError,
    GatewayUnreachableError,
    InvalidRequestError,
    error_from_response,
)

F = TypeVar("F")

_LOOPBACK = re.compile(r"^(127\.0\.0\.1|localhost|\[::1\]|::1)$")
_MANAGED_HEADERS = re.compile(r"^(authorization|x-chatpanel-token|host|content-length)$", re.I)
_VERSION_TTL = 30.0
DEFAULT_BASE_URL = "http://127.0.0.1:4320"

TokenSource = Union[str, None, Callable[[], Optional[str]]]


@dataclass(frozen=True)
class Operation:
    """One row of the generated route table."""

    id: str
    method: str
    path: str
    auth: str
    since: Optional[str]
    stream: Optional[str]
    path_params: Tuple[str, ...]
    query_params: Tuple[str, ...]


@dataclass
class SseFrame(Generic[F]):
    """One text/event-stream frame. ``data`` is JSON when it parses, the raw string otherwise."""

    event: str
    data: F
    raw: str
    id: Optional[str] = None


def compare_versions(a: str, b: str) -> int:
    pa = [int(x) if x.isdigit() else 0 for x in str(a).split(".")]
    pb = [int(x) if x.isdigit() else 0 for x in str(b).split(".")]
    for i in range(max(len(pa), len(pb))):
        d = (pa[i] if i < len(pa) else 0) - (pb[i] if i < len(pb) else 0)
        if d:
            return d
    return 0


def normalise_base_url(raw: Optional[str], allow_remote: bool) -> str:
    """Validate a base URL under the loopback rule. Returns the origin without a trailing slash."""
    text = (raw or DEFAULT_BASE_URL).strip()
    u = urllib.parse.urlsplit(text)
    if u.scheme not in ("http", "https") or not u.hostname:
        raise InvalidRequestError(f"baseUrl must be an http or https URL (got {text})")
    if u.username or u.password:
        raise InvalidRequestError("baseUrl must not carry credentials")
    host = u.hostname
    if not _LOOPBACK.match(host):
        if not allow_remote:
            raise InvalidRequestError(
                f"baseUrl {u.scheme}://{u.netloc} is not loopback — the gateway only answers on this machine; "
                "pass allow_remote=True (and https) only for a tunnel you control"
            )
        if u.scheme != "https":
            raise InvalidRequestError("a remote baseUrl must be https — the token would otherwise travel in the clear")
    return f"{u.scheme}://{u.netloc}{u.path.rstrip('/')}"


def parse_frame(block: str) -> Optional[SseFrame[Any]]:
    event = "message"
    fid: Optional[str] = None
    data = []
    for line in block.split("\n"):
        if not line or line.startswith(":"):
            continue
        field, _, value = line.partition(":")
        if value.startswith(" "):
            value = value[1:]
        if field == "event":
            event = value
        elif field == "data":
            data.append(value)
        elif field == "id":
            fid = value
    if not data:
        return None
    raw = "\n".join(data)
    parsed: Any = raw
    try:
        parsed = json.loads(raw)
    except ValueError:
        pass
    return SseFrame(event=event, data=parsed, raw=raw, id=fid)


class Runtime:
    def __init__(
        self,
        base_url: Optional[str] = None,
        token: TokenSource = None,
        *,
        allow_remote: bool = False,
        timeout: float = 20.0,
        retries: int = 2,
        version_gate: bool = True,
        user_agent: str = "",
        opener: Optional[Callable[..., Any]] = None,
    ) -> None:
        self.base_url = normalise_base_url(base_url, allow_remote)
        self._token_source = token
        self._token_override: Optional[str] = None
        self.timeout = timeout
        self.retries = max(0, min(5, retries))
        self.version_gate = version_gate
        self.user_agent = user_agent
        # Injected for tests. Signature: opener(request, timeout) -> response-like.
        self._opener = opener or (lambda req, timeout: urllib.request.urlopen(req, timeout=timeout))  # noqa: S310 — loopback by construction
        self._version_cache: Tuple[float, str] = (0.0, "")

    def __repr__(self) -> str:  # never the credential
        return f"ChatPanel Runtime({self.base_url})"

    __str__ = __repr__

    def set_token(self, token: Optional[str]) -> None:
        """Use a token obtained after construction — pairing, for instance."""
        self._token_override = token

    def token(self) -> str:
        if self._token_override is not None:
            return self._token_override
        s = self._token_source
        v = s() if callable(s) else s
        return (v or "").strip()

    def version(self) -> str:
        """The running gateway's version — one GET /health per 30 s window. A failed probe is not cached."""
        at, v = self._version_cache
        now = time.monotonic()
        if v and now - at < _VERSION_TTL:
            return v
        status, text = self._send("GET", f"{self.base_url}/health", {}, None, 4.0, "gateway.health")
        version = ""
        try:
            version = str(json.loads(text).get("version") or "")
        except (ValueError, AttributeError):
            pass
        if version:
            self._version_cache = (now, version)
        return version

    def forget_version(self) -> None:
        self._version_cache = (0.0, "")

    # ------------------------------------------------------------------ calls
    def request(
        self,
        op: Operation,
        *,
        path: Optional[Dict[str, str]] = None,
        query: Optional[Dict[str, Any]] = None,
        headers: Optional[Dict[str, str]] = None,
        body: Any = None,
        timeout: Optional[float] = None,
    ) -> Any:
        """One JSON request. Returns the parsed body; raises a ChatPanelError subclass."""
        url, hdrs = self._prepare(op, path, query, headers)
        data = None if body is None else json.dumps(body).encode("utf-8")
        if data is not None:
            hdrs["Content-Type"] = "application/json"
        hdrs["Accept"] = "application/json"
        attempts = self.retries + 1 if op.method == "GET" else 1
        last: Optional[ChatPanelError] = None
        for attempt in range(attempts):
            if attempt:
                time.sleep(0.15 * attempt + random.random() * 0.2)  # noqa: S311 — jitter, not security
            try:
                status, text = self._send(op.method, url, hdrs, data, timeout or self.timeout, op.id)
            except GatewayUnreachableError as e:
                if attempt + 1 < attempts:
                    last = e
                    continue
                raise
            if status >= 400:
                err = error_from_response(status, text, op.id)
                if status in (502, 503) and attempt + 1 < attempts:
                    last = err
                    continue
                raise err
            if not text:
                return None
            try:
                return json.loads(text)
            except ValueError:
                raise ChatPanelError(f"{op.id}: the gateway answered with something other than JSON", status=status, type="bad_response", operation=op.id) from None
        raise last or GatewayUnreachableError(f"{op.id}: gave up", op.id)

    def stream(
        self,
        op: Operation,
        *,
        path: Optional[Dict[str, str]] = None,
        query: Optional[Dict[str, Any]] = None,
        headers: Optional[Dict[str, str]] = None,
        body: Any = None,
        timeout: Optional[float] = None,
    ) -> Iterator[SseFrame[Any]]:
        """One SSE request. Yields frames until the server closes or ``[DONE]`` arrives.
        Stop early by breaking out of the loop — the connection is closed with the iterator."""
        url, hdrs = self._prepare(op, path, query, headers)
        data = None if body is None else json.dumps(body).encode("utf-8")
        if data is not None:
            hdrs["Content-Type"] = "application/json"
        hdrs["Accept"] = "text/event-stream"
        req = urllib.request.Request(url, data=data, headers=hdrs, method=op.method)
        # The timeout covers the connection and the headers; a run's tail may stay open for hours.
        try:
            resp = self._opener(req, timeout or self.timeout)
        except urllib.error.HTTPError as e:
            raise error_from_response(e.code, e.read().decode("utf-8", "replace"), op.id) from None
        except (urllib.error.URLError, OSError, TimeoutError) as e:
            raise GatewayUnreachableError(f"{op.id}: couldn't reach the gateway on {self.base_url} — {getattr(e, 'reason', e)}", op.id) from None
        stop_at_done = op.stream == "sse-when-stream"
        try:
            buffer = ""
            while True:
                chunk = resp.readline()
                if not chunk:
                    break
                buffer += chunk.decode("utf-8", "replace").replace("\r\n", "\n")
                if buffer.endswith("\n\n") or buffer == "\n":
                    block = buffer[:-2] if buffer.endswith("\n\n") else ""
                    buffer = ""
                    frame = parse_frame(block) if block else None
                    if frame is None:
                        continue
                    if stop_at_done and frame.raw.strip() == "[DONE]":
                        return
                    yield frame
            tail = parse_frame(buffer) if buffer.strip() else None
            if tail is not None and not (stop_at_done and tail.raw.strip() == "[DONE]"):
                yield tail
        finally:
            try:
                resp.close()
            except Exception:  # noqa: BLE001 — closing is best-effort
                pass

    # ------------------------------------------------------------------ internals
    def _prepare(self, op: Operation, path: Optional[Dict[str, str]], query: Optional[Dict[str, Any]], headers: Optional[Dict[str, str]]) -> Tuple[str, Dict[str, str]]:
        if self.version_gate and op.since:
            have = self.version()
            if not have:
                raise GatewayUnreachableError(f"{op.id}: the gateway on {self.base_url} is not answering", op.id)
            if compare_versions(op.since, have) > 0:
                raise GatewayTooOldError(op.id, have, op.since)
        hdrs: Dict[str, str] = {}
        if self.user_agent:
            hdrs["User-Agent"] = self.user_agent
        token = self.token()
        if token:
            hdrs["Authorization"] = f"Bearer {token}"
        elif op.auth == "token":
            raise ForbiddenError(
                f"{op.id} needs the gateway token and this client has none — pass token=, set CHATPANEL_GATEWAY_TOKEN, "
                "or pair with a code from `chatpanel-gateway pair`",
                op.id,
            )
        for k, v in (headers or {}).items():
            if v is None:
                continue
            if _MANAGED_HEADERS.match(k):
                raise InvalidRequestError(f"{op.id}: header {k} is managed by the SDK", op.id)
            if "\r" in str(v) or "\n" in str(v):
                raise InvalidRequestError(f"{op.id}: header {k} must be one line", op.id)
            hdrs[k] = str(v)
        p = op.path
        for name in op.path_params:
            v = (path or {}).get(name)
            if v is None or str(v) == "":
                raise InvalidRequestError(f"{op.id}: path parameter {name} is required", op.id)
            sv = str(v)
            if "/" in sv or "\\" in sv or sv in (".", ".."):
                raise InvalidRequestError(f"{op.id}: path parameter {name} must be one segment", op.id)
            p = p.replace("{" + name + "}", urllib.parse.quote(sv, safe=""))
        params = []
        for k, v in (query or {}).items():
            if k not in op.query_params or v is None:
                continue
            params.append((k, ("1" if v else "0") if isinstance(v, bool) else str(v)))
        url = self.base_url + p + (("?" + urllib.parse.urlencode(params)) if params else "")
        return url, hdrs

    def _send(self, method: str, url: str, headers: Dict[str, str], data: Optional[bytes], timeout: float, operation: str) -> Tuple[int, str]:
        req = urllib.request.Request(url, data=data, headers=headers, method=method)
        try:
            with self._opener(req, timeout) as resp:
                return resp.status, resp.read().decode("utf-8", "replace")
        except urllib.error.HTTPError as e:
            return e.code, e.read().decode("utf-8", "replace")
        except (urllib.error.URLError, OSError, TimeoutError) as e:
            reason = getattr(e, "reason", e)
            if isinstance(reason, TimeoutError) or "timed out" in str(reason):
                reason = f"did not answer within {timeout:g} s"
            raise GatewayUnreachableError(f"{operation}: couldn't reach the gateway on {self.base_url} — {reason}", operation) from None


# ------------------------------------------------------------------ discovery
TOKEN_ENV = "CHATPANEL_GATEWAY_TOKEN"
TOKEN_PATH_ENV = "CHATPANEL_GATEWAY_TOKEN_PATH"
URL_ENV = "CHATPANEL_GATEWAY_URL"


def discover_base_url() -> str:
    return os.environ.get(URL_ENV) or DEFAULT_BASE_URL


def discover_token() -> str:
    """The token from ``CHATPANEL_GATEWAY_TOKEN``, else the token file
    (``CHATPANEL_GATEWAY_TOKEN_PATH`` or ``~/.chatpanel/gateway-token``). Empty when neither exists."""
    env = os.environ.get(TOKEN_ENV)
    if env:
        return env.strip()
    path = os.environ.get(TOKEN_PATH_ENV) or os.path.join(os.path.expanduser("~"), ".chatpanel", "gateway-token")
    try:
        with open(path, encoding="utf-8") as f:
            return f.read().strip()
    except OSError:
        return ""
