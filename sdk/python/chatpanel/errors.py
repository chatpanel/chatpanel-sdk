"""Every failure the SDK raises is one of these, so an application can branch on the class
(or on ``status`` / ``type``) instead of parsing prose. The message is the gateway's own
sentence when it gave one. No error ever carries a token or a request header."""

from __future__ import annotations

import json


class ChatPanelError(Exception):
    """Base class. ``status`` is the HTTP status (0 when no response arrived); ``type`` is the
    gateway's stable machine word when it gave one."""

    def __init__(self, message: str, *, status: int = 0, type: str = "error", operation: str = "") -> None:
        super().__init__(message)
        self.message = message
        self.status = status
        self.type = type
        self.operation = operation

    def __str__(self) -> str:  # never the headers, never the token
        return self.message


class GatewayUnreachableError(ChatPanelError):
    """The gateway did not answer at all — not running, wrong port, or the request timed out."""

    def __init__(self, message: str, operation: str = "") -> None:
        super().__init__(message, status=0, type="unreachable", operation=operation)


class GatewayTooOldError(ChatPanelError):
    """The running gateway predates this route."""

    def __init__(self, operation: str, have: str, need: str) -> None:
        super().__init__(
            f"your gateway is {have}; {operation} needs {need} — update it (npm i -g @chatpanel/gateway, or the desktop app)",
            status=0, type="gateway_too_old", operation=operation,
        )
        self.have = have
        self.need = need


class ForbiddenError(ChatPanelError):
    """The route needs the gateway token and this client has none, or the wrong one."""

    def __init__(self, message: str, operation: str = "") -> None:
        super().__init__(message, status=403, type="forbidden", operation=operation)


class NotFoundError(ChatPanelError):
    def __init__(self, message: str, operation: str = "") -> None:
        super().__init__(message, status=404, type="not_found", operation=operation)


class InvalidRequestError(ChatPanelError):
    """The SDK refused to send: a bad base URL, a missing path parameter, an unmanaged header."""

    def __init__(self, message: str, operation: str = "") -> None:
        super().__init__(message, status=0, type="invalid_request", operation=operation)


def error_from_response(status: int, body: str, operation: str) -> ChatPanelError:
    """Build the right subclass from an HTTP response the gateway answered with."""
    message = body[:400] or f"HTTP {status}"
    etype = ""
    try:
        j = json.loads(body)
        err = j.get("error") if isinstance(j, dict) else None
        if isinstance(err, str):
            message = err
        elif isinstance(err, dict):
            message = str(err.get("message") or message)
            etype = str(err.get("type") or "")
    except (ValueError, AttributeError):
        pass
    if status == 403:
        return ForbiddenError(message, operation)
    if status == 404:
        return NotFoundError(message, operation)
    return ChatPanelError(message, status=status, type=etype or f"http_{status}", operation=operation)
