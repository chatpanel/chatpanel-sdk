// Every failure the SDK raises is one of these, so an application can branch on the class
// (or on `status` / `type`) instead of parsing prose. The message is the gateway's own
// sentence when it gave one — it is written for a person and far more useful than "request
// failed". No error ever carries a token or a request header.

/** Base class. `status` is the HTTP status (0 when no response arrived); `type` is the gateway's stable machine word when it gave one. */
export class ChatPanelError extends Error {
  readonly status: number;
  readonly type: string;
  readonly operation: string;
  constructor(message: string, { status = 0, type = 'error', operation = '' }: { status?: number; type?: string; operation?: string } = {}) {
    super(message);
    this.name = new.target.name;
    this.status = status;
    this.type = type;
    this.operation = operation;
  }
}

/** The gateway did not answer at all — not running, wrong port, or the request timed out. */
export class GatewayUnreachableError extends ChatPanelError {
  constructor(message: string, operation = '') { super(message, { status: 0, type: 'unreachable', operation }); }
}

/** The running gateway predates this route. `have` is its version, `need` the one the route requires. */
export class GatewayTooOldError extends ChatPanelError {
  readonly have: string;
  readonly need: string;
  constructor(operation: string, have: string, need: string) {
    super(`your gateway is ${have}; ${operation} needs ${need} — update it (npm i -g @chatpanel/gateway, or the desktop app)`, { status: 0, type: 'gateway_too_old', operation });
    this.have = have;
    this.need = need;
  }
}

/** The route needs the gateway token and this client has none, or the wrong one. */
export class ForbiddenError extends ChatPanelError {
  constructor(message: string, operation = '') { super(message, { status: 403, type: 'forbidden', operation }); }
}

export class NotFoundError extends ChatPanelError {
  constructor(message: string, operation = '') { super(message, { status: 404, type: 'not_found', operation }); }
}

/** The SDK refused to send: a bad base URL, a missing path parameter, a body that is not JSON. */
export class InvalidRequestError extends ChatPanelError {
  constructor(message: string, operation = '') { super(message, { status: 0, type: 'invalid_request', operation }); }
}

/** Build the right subclass from an HTTP response the gateway answered with. */
export function errorFromResponse(status: number, body: string, operation: string): ChatPanelError {
  let message = body.slice(0, 400) || `HTTP ${status}`;
  let type = '';
  try {
    const j = JSON.parse(body) as { error?: string | { message?: string; type?: string } };
    if (typeof j?.error === 'string') message = j.error;
    else if (j?.error && typeof j.error === 'object') { message = String(j.error.message || message); type = String(j.error.type || ''); }
  } catch { /* not JSON — keep the text */ }
  if (status === 403) return new ForbiddenError(message, operation);
  if (status === 404) return new NotFoundError(message, operation);
  return new ChatPanelError(message, { status, type: type || `http_${status}`, operation });
}
