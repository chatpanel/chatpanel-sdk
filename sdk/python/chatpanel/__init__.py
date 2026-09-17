"""chatpanel — a typed client for the local ChatPanel gateway.

    from chatpanel import ChatPanel
    cp = ChatPanel.from_environment()             # reads ~/.chatpanel/gateway-token
    hits = cp.history.smart_search({"question": "what did we decide about the launch?"})
    for text in cp.chat.text({"model": "claude", "messages": [{"role": "user", "content": "hi"}]}):
        print(text, end="", flush=True)

The namespaces (``history``, ``memory``, ``chat``, …) are GENERATED from the contract; this
module adds the few things that need judgement: construction, discovery, pairing, and a text
iterator over the chat stream.
"""

from __future__ import annotations

from typing import Any, Dict, Iterator, Optional

from . import _types_generated as types
from ._api_generated import OPERATIONS, Api
from ._runtime import (
    DEFAULT_BASE_URL,
    TOKEN_ENV,
    TOKEN_PATH_ENV,
    URL_ENV,
    Operation,
    Runtime,
    SseFrame,
    TokenSource,
    compare_versions,
    discover_base_url,
    discover_token,
    normalise_base_url,
    parse_frame,
)
from .errors import (
    ChatPanelError,
    ForbiddenError,
    GatewayTooOldError,
    GatewayUnreachableError,
    InvalidRequestError,
    NotFoundError,
)

__all__ = [
    "ChatPanel", "Runtime", "Operation", "OPERATIONS", "SseFrame", "types",
    "ChatPanelError", "ForbiddenError", "GatewayTooOldError", "GatewayUnreachableError", "InvalidRequestError", "NotFoundError",
    "compare_versions", "normalise_base_url", "parse_frame", "delta_text",
    "discover_base_url", "discover_token", "DEFAULT_BASE_URL", "TOKEN_ENV", "TOKEN_PATH_ENV", "URL_ENV",
]

__version__ = "0.1.0"


def delta_text(frame: SseFrame[Any]) -> str:
    """The text of one streamed chunk, or '' when the frame carried none (usage, a tool call)."""
    d = frame.data
    if not isinstance(d, dict):
        return ""
    choices = d.get("choices") or []
    delta = choices[0].get("delta") if choices and isinstance(choices[0], dict) else None
    content = delta.get("content") if isinstance(delta, dict) else None
    return content if isinstance(content, str) else ""


class _Chat:
    """The generated chat namespace plus ``text()``."""

    def __init__(self, inner: Any) -> None:
        self._inner = inner

    def __getattr__(self, name: str) -> Any:
        return getattr(self._inner, name)

    def text(self, body: Dict[str, Any], *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[str]:
        """Stream just the text of a reply. Tool calls and usage frames are skipped; use ``completions_stream`` for those."""
        for frame in self._inner.completions_stream(body, headers=headers, timeout=timeout):
            t = delta_text(frame)
            if t:
                yield t


class ChatPanel:
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
        opener: Any = None,
    ) -> None:
        self.runtime = Runtime(base_url, token, allow_remote=allow_remote, timeout=timeout, retries=retries, version_gate=version_gate, user_agent=user_agent, opener=opener)
        api = Api(self.runtime)
        self.gateway = api.gateway
        self.models = api.models
        self.chat = _Chat(api.chat)
        self.redaction = api.redaction
        self.history = api.history
        self.memory = api.memory
        self.prefs = api.prefs
        self.teams = api.teams
        self.projects = api.projects
        self.agents = api.agents
        self.engines = api.engines
        self.skills = api.skills

    def __repr__(self) -> str:
        return f"ChatPanel({self.runtime.base_url})"

    @classmethod
    def from_environment(cls, **kwargs: Any) -> "ChatPanel":
        """A client for the gateway on this machine, authenticated as the current user: the URL from
        ``CHATPANEL_GATEWAY_URL`` and the token from ``CHATPANEL_GATEWAY_TOKEN`` or the token file."""
        kwargs.setdefault("base_url", discover_base_url())
        return cls(token=discover_token() or None, **kwargs)

    def health(self) -> "types.Health":
        return self.gateway.health()

    def whoami(self) -> "types.WhoAmI":
        return self.gateway.whoami()

    def pair(self, code: str) -> "types.Paired":
        """Exchange a one-time code for the token and start using it. The token is RETURNED so the
        application can persist it — in the platform keychain or a 0600 file, never in a log."""
        paired = self.gateway.pair({"code": str(code).strip()})
        self.runtime.set_token(paired["token"])
        return paired

    def request(self, operation_id: str, **kwargs: Any) -> Any:
        """Any operation by id — for a route added to the contract before this package learnt a method for it."""
        return self.runtime.request(OPERATIONS[operation_id], **kwargs)
