// The transport. One place that knows how to reach the gateway, so the rules below cannot
// be forgotten at a call site — every generated method goes through `request` or `stream`.
//
// The rules, and why each exists:
//   • LOOPBACK BY DEFAULT. The gateway only answers on 127.0.0.1, and the token is a bearer
//     secret: a base URL on another host is refused unless the integrator opts in AND uses
//     TLS, so the token can never be sent in the clear to a machine that is not this one.
//   • THE TOKEN IS NEVER LOGGED. It is resolved lazily from a source function, attached as a
//     header, and appears in no error, no toString, no debug output.
//   • ONLY THE CONTRACT IS SENT. Path parameters are URL-encoded one segment each; query
//     parameters not declared for the operation are dropped; a token-gated operation with no
//     token fails HERE, with a sentence that says how to get one, instead of a bare 403.
//   • THE VERSION GATE. A route the running gateway does not have does not 404 usefully — it
//     falls through to the model proxy as "upstream fetch failed". So `since` is checked
//     against one cached GET /health first, and refused as what it is: too old.
//   • BOUNDED. Every request has a timeout; retries are for idempotent GETs only, bounded
//     and jittered; a chat POST is never replayed.
import { ChatPanelError, ForbiddenError, GatewayTooOldError, GatewayUnreachableError, InvalidRequestError, errorFromResponse } from './errors.js';
import { readSse, type SseFrame } from './sse.js';

export type { SseFrame } from './sse.js';

/** One row of the generated route table. */
export interface Operation {
  readonly id: string;
  readonly method: string;
  readonly path: string;
  readonly auth: 'open' | 'token';
  readonly since: string | null;
  readonly stream: 'sse' | 'sse-when-stream' | null;
  readonly pathParams: readonly string[];
  readonly queryParams: readonly string[];
}

/** Per-call options every generated method accepts last. */
export interface RequestOptions {
  signal?: AbortSignal;
  timeoutMs?: number;
  headers?: Record<string, string | undefined>;
  query?: Record<string, unknown>;
}

export type TokenSource = string | undefined | (() => string | undefined | Promise<string | undefined>);

export interface RuntimeOptions {
  /** Default `http://127.0.0.1:4320`. */
  baseUrl?: string;
  /** The gateway token, or a function that produces it (a keychain read, for instance). */
  token?: TokenSource;
  /** A non-loopback `baseUrl` is refused unless this is true — and then it must be https. */
  allowRemote?: boolean;
  /** Default 20 000 ms. Streams are not subject to it once the headers have arrived. */
  timeoutMs?: number;
  /** GET retries on a network error or 502/503. Default 2. Never applied to a write. */
  retries?: number;
  /** Check `since` against GET /health before a call. Default true. */
  versionGate?: boolean;
  /** Injected for tests and proxies. Default: the global fetch. */
  fetch?: typeof fetch;
  /** Sent as `User-Agent` where the runtime allows it. */
  userAgent?: string;
}

export interface CallArgs {
  path?: Record<string, string | undefined>;
  query?: Record<string, unknown> | undefined;
  headers?: Record<string, string | undefined>;
  body?: unknown;
  opts?: RequestOptions;
}

const LOOPBACK = /^(127\.0\.0\.1|localhost|\[::1\]|::1)$/;
const VERSION_TTL_MS = 30_000;

export function compareVersions(a: string, b: string): number {
  const pa = a.split('.').map((n) => parseInt(n, 10) || 0);
  const pb = b.split('.').map((n) => parseInt(n, 10) || 0);
  for (let i = 0; i < Math.max(pa.length, pb.length); i++) {
    const d = (pa[i] || 0) - (pb[i] || 0);
    if (d) return d;
  }
  return 0;
}

/** Validate a base URL under the loopback rule. Returns the normalised origin (no trailing slash). */
export function normaliseBaseUrl(raw: string | undefined, allowRemote: boolean): string {
  const text = (raw || 'http://127.0.0.1:4320').trim();
  let u: URL;
  try { u = new URL(text); } catch { throw new InvalidRequestError(`baseUrl is not a URL: ${text}`); }
  if (u.username || u.password) throw new InvalidRequestError('baseUrl must not carry credentials');
  if (!/^https?:$/.test(u.protocol)) throw new InvalidRequestError(`baseUrl must be http or https (got ${u.protocol})`);
  const loopback = LOOPBACK.test(u.hostname);
  if (!loopback) {
    if (!allowRemote) throw new InvalidRequestError(`baseUrl ${u.origin} is not loopback — the gateway only answers on this machine; pass allowRemote: true (and https) only for a tunnel you control`);
    if (u.protocol !== 'https:') throw new InvalidRequestError(`a remote baseUrl must be https — the token would otherwise travel in the clear`);
  }
  return u.origin + u.pathname.replace(/\/+$/, '');
}

export class Runtime {
  readonly baseUrl: string;
  private readonly tokenSource: TokenSource;
  private readonly timeoutMs: number;
  private readonly retries: number;
  private readonly versionGate: boolean;
  private readonly fetchImpl: typeof fetch;
  private readonly userAgent: string;
  private versionCache: { at: number; version: string } = { at: 0, version: '' };
  private tokenOverride: string | undefined;

  constructor(options: RuntimeOptions = {}) {
    this.baseUrl = normaliseBaseUrl(options.baseUrl, !!options.allowRemote);
    this.tokenSource = options.token;
    this.timeoutMs = options.timeoutMs ?? 20_000;
    this.retries = Math.max(0, Math.min(5, options.retries ?? 2));
    this.versionGate = options.versionGate !== false;
    this.fetchImpl = options.fetch ?? globalThis.fetch;
    this.userAgent = options.userAgent ?? '';
    if (typeof this.fetchImpl !== 'function') throw new InvalidRequestError('no fetch available — pass options.fetch');
  }

  /** Nothing about the credential is ever printed. */
  toString(): string { return `ChatPanel Runtime(${this.baseUrl})`; }
  [Symbol.for('nodejs.util.inspect.custom')](): string { return this.toString(); }

  /** Use a token obtained after construction — pairing, for instance. */
  setToken(token: string | undefined): void { this.tokenOverride = token; }

  async token(): Promise<string> {
    if (this.tokenOverride !== undefined) return this.tokenOverride;
    const s = this.tokenSource;
    const v = typeof s === 'function' ? await s() : s;
    return (v || '').trim();
  }

  /** The running gateway's version — one GET /health per 30 s window. A failed probe is not cached. */
  async version(): Promise<string> {
    const now = Date.now();
    if (this.versionCache.version && now - this.versionCache.at < VERSION_TTL_MS) return this.versionCache.version;
    const res = await this.send('GET', `${this.baseUrl}/health`, {}, undefined, 4000, undefined, 'gateway.health');
    const text = await res.text();
    let version = '';
    try { version = String((JSON.parse(text) as { version?: string })?.version || ''); } catch { /* not JSON */ }
    if (version) this.versionCache = { at: now, version };
    return version;
  }

  /** Forget the cached version — after restarting or replacing the gateway. */
  forgetVersion(): void { this.versionCache = { at: 0, version: '' }; }

  /** One JSON request. Resolves to the parsed body; rejects with a ChatPanelError subclass. */
  async request<R = unknown>(op: Operation, args: CallArgs = {}): Promise<R> {
    const { url, headers, timeoutMs, signal } = await this.prepare(op, args);
    const body = args.body === undefined ? undefined : JSON.stringify(args.body);
    if (body !== undefined) headers['Content-Type'] = 'application/json';
    headers['Accept'] = 'application/json';
    const attempts = op.method === 'GET' ? this.retries + 1 : 1;
    let lastErr: ChatPanelError | null = null;
    for (let attempt = 0; attempt < attempts; attempt++) {
      if (attempt) await new Promise((r) => setTimeout(r, 150 * attempt + Math.random() * 200));
      try {
        const res = await this.send(op.method, url, headers, body, timeoutMs, signal, op.id);
        const text = await res.text();
        if (!res.ok) {
          const err = errorFromResponse(res.status, text, op.id);
          if ((res.status === 502 || res.status === 503) && attempt + 1 < attempts) { lastErr = err; continue; }
          throw err;
        }
        if (!text) return undefined as R;
        try { return JSON.parse(text) as R; } catch { throw new ChatPanelError(`${op.id}: the gateway answered with something other than JSON`, { status: res.status, type: 'bad_response', operation: op.id }); }
      } catch (e) {
        if (e instanceof GatewayUnreachableError && attempt + 1 < attempts && !signal?.aborted) { lastErr = e; continue; }
        throw e;
      }
    }
    throw lastErr ?? new GatewayUnreachableError(`${op.id}: gave up`, op.id);
  }

  /** One SSE request. Yields frames until the server closes, `[DONE]` arrives, or the signal aborts. */
  async *stream<F = unknown>(op: Operation, args: CallArgs = {}): AsyncGenerator<SseFrame<F>> {
    const { url, headers, timeoutMs, signal } = await this.prepare(op, args);
    const body = args.body === undefined ? undefined : JSON.stringify(args.body);
    if (body !== undefined) headers['Content-Type'] = 'application/json';
    headers['Accept'] = 'text/event-stream';
    // The timeout covers the headers only: a run's tail may legitimately stay open for hours.
    const headerCtl = new AbortController();
    const timer = setTimeout(() => headerCtl.abort(), timeoutMs);
    const combined = signal ? anySignal([signal, headerCtl.signal]) : headerCtl.signal;
    let res: Response;
    try {
      res = await this.fetchImpl(url, { method: op.method, headers, body, signal: combined });
    } catch (e) {
      clearTimeout(timer);
      if (signal?.aborted) throw new ChatPanelError(`${op.id}: aborted`, { status: 0, type: 'aborted', operation: op.id });
      throw new GatewayUnreachableError(`${op.id}: couldn't reach the gateway on ${this.baseUrl} — ${(e as Error).message}`, op.id);
    }
    clearTimeout(timer);
    if (!res.ok) throw errorFromResponse(res.status, await res.text().catch(() => ''), op.id);
    if (!res.body) throw new ChatPanelError(`${op.id}: no response body`, { status: res.status, type: 'bad_response', operation: op.id });
    // An abort by the caller ENDS the iteration; it is not an error. Anything else that
    // interrupts the body (the gateway restarting mid-stream) is reported as unreachable.
    try {
      for await (const frame of readSse<F>(res.body, { stopAtDone: op.stream === 'sse-when-stream' })) {
        if (signal?.aborted) return;
        yield frame;
      }
    } catch (e) {
      if (signal?.aborted) return;
      throw new GatewayUnreachableError(`${op.id}: the stream ended early — ${(e as Error).message}`, op.id);
    }
  }

  private async prepare(op: Operation, args: CallArgs) {
    if (this.versionGate && op.since) {
      const have = await this.version();
      if (!have) throw new GatewayUnreachableError(`${op.id}: the gateway on ${this.baseUrl} is not answering`, op.id);
      if (compareVersions(op.since, have) > 0) throw new GatewayTooOldError(op.id, have, op.since);
    }
    const headers: Record<string, string> = {};
    if (this.userAgent) headers['User-Agent'] = this.userAgent;
    const token = await this.token();
    if (token) headers['Authorization'] = `Bearer ${token}`;
    else if (op.auth === 'token') {
      throw new ForbiddenError(`${op.id} needs the gateway token and this client has none — pass { token }, set CHATPANEL_GATEWAY_TOKEN, or pair with a code from \`chatpanel-gateway pair\``, op.id);
    }
    for (const [k, v] of Object.entries({ ...(args.headers || {}), ...(args.opts?.headers || {}) })) {
      if (v === undefined || v === null) continue;
      if (/^(authorization|x-chatpanel-token|host|content-length)$/i.test(k)) throw new InvalidRequestError(`${op.id}: header ${k} is managed by the SDK`, op.id);
      if (/[\r\n]/.test(v)) throw new InvalidRequestError(`${op.id}: header ${k} must be one line`, op.id);
      headers[k] = String(v);
    }
    // Path: every declared segment present and encoded as ONE segment; the gateway's own
    // regexes still apply, this is the half we own.
    let path = op.path;
    for (const name of op.pathParams) {
      const v = args.path?.[name];
      if (v === undefined || v === null || String(v) === '') throw new InvalidRequestError(`${op.id}: path parameter ${name} is required`, op.id);
      if (/[/\\]/.test(String(v)) || String(v) === '.' || String(v) === '..') throw new InvalidRequestError(`${op.id}: path parameter ${name} must be one segment`, op.id);
      path = path.replace(`{${name}}`, encodeURIComponent(String(v)));
    }
    const url = new URL(this.baseUrl + path);
    for (const [k, v] of Object.entries({ ...(args.query || {}), ...(args.opts?.query || {}) })) {
      if (!op.queryParams.includes(k) || v === undefined || v === null) continue;
      url.searchParams.set(k, typeof v === 'boolean' ? (v ? '1' : '0') : String(v));
    }
    return { url: url.toString(), headers, timeoutMs: args.opts?.timeoutMs ?? this.timeoutMs, signal: args.opts?.signal };
  }

  private async send(method: string, url: string, headers: Record<string, string>, body: string | undefined, timeoutMs: number, signal: AbortSignal | undefined, operation: string): Promise<Response> {
    const ctl = new AbortController();
    const timer = setTimeout(() => ctl.abort(), timeoutMs);
    const combined = signal ? anySignal([signal, ctl.signal]) : ctl.signal;
    try {
      return await this.fetchImpl(url, { method, headers, body, signal: combined });
    } catch (e) {
      if (signal?.aborted) throw new ChatPanelError(`${operation}: aborted`, { status: 0, type: 'aborted', operation });
      const reason = ctl.signal.aborted ? `did not answer within ${timeoutMs} ms` : (e as Error).message;
      throw new GatewayUnreachableError(`${operation}: couldn't reach the gateway on ${this.baseUrl} — ${reason}`, operation);
    } finally {
      clearTimeout(timer);
    }
  }
}

function anySignal(signals: AbortSignal[]): AbortSignal {
  const any = (AbortSignal as unknown as { any?: (s: AbortSignal[]) => AbortSignal }).any;
  if (typeof any === 'function') return any(signals);
  const ctl = new AbortController();
  for (const s of signals) {
    if (s.aborted) { ctl.abort(); break; }
    s.addEventListener('abort', () => ctl.abort(), { once: true });
  }
  return ctl.signal;
}
