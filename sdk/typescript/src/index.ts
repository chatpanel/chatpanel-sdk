// @chatpanel/sdk — a typed client for the local ChatPanel gateway.
//
//   import { ChatPanel } from '@chatpanel/sdk';
//   const cp = await ChatPanel.fromEnvironment();          // Node: reads ~/.chatpanel/gateway-token
//   const hits = await cp.history.smartSearch({ question: 'what did we decide about the launch?' });
//   for await (const delta of cp.chat.text({ model: 'claude', messages: [{ role: 'user', content: 'hi' }] })) process.stdout.write(delta);
//
// The namespaces (`history`, `memory`, `chat`, …) are GENERATED from the contract; this file
// adds the few things that need judgement: construction, discovery, pairing, and a text
// iterator over the chat stream.
import { buildApi, OPERATIONS, type OperationId } from './api.generated.js';
import { discoverBaseUrl, discoverToken } from './discover.js';
import { Runtime, type RuntimeOptions, type CallArgs, type SseFrame } from './runtime.js';
import type * as T from './types.generated.js';

export * from './errors.js';
export * from './api.generated.js';
export * as types from './types.generated.js';
export { Runtime, compareVersions, normaliseBaseUrl } from './runtime.js';
export type { RuntimeOptions, RequestOptions, Operation, SseFrame, TokenSource } from './runtime.js';
export { parseFrame, readSse } from './sse.js';
export { discoverBaseUrl, discoverToken, TOKEN_ENV, TOKEN_PATH_ENV, URL_ENV } from './discover.js';

export type ChatPanelOptions = RuntimeOptions;

type Api = ReturnType<typeof buildApi>;

/** The text of one streamed chunk, or '' when the frame carried none (a usage frame, a tool call). */
export function deltaText(frame: SseFrame<T.ChatCompletionChunk>): string {
  const d = frame.data as T.ChatCompletionChunk | string;
  if (!d || typeof d !== 'object') return '';
  const delta = d.choices?.[0]?.delta as { content?: unknown } | undefined;
  return typeof delta?.content === 'string' ? delta.content : '';
}

export class ChatPanel {
  readonly runtime: Runtime;
  readonly gateway: Api['gateway'];
  readonly models: Api['models'];
  readonly chat: Api['chat'] & {
    /** Stream just the text of a reply. Tool calls and usage frames are skipped; use `completionsStream` for those. */
    text(body: T.ChatCompletionRequest, opts?: Parameters<Api['chat']['completionsStream']>[1]): AsyncGenerator<string>;
  };
  readonly redaction: Api['redaction'];
  readonly history: Api['history'];
  readonly memory: Api['memory'];
  readonly prefs: Api['prefs'];
  readonly teams: Api['teams'];
  readonly projects: Api['projects'];
  readonly agents: Api['agents'];
  readonly engines: Api['engines'];
  readonly skills: Api['skills'];

  constructor(options: ChatPanelOptions = {}) {
    this.runtime = new Runtime(options);
    const api = buildApi(this.runtime);
    this.gateway = api.gateway;
    this.models = api.models;
    this.redaction = api.redaction;
    this.history = api.history;
    this.memory = api.memory;
    this.prefs = api.prefs;
    this.teams = api.teams;
    this.projects = api.projects;
    this.agents = api.agents;
    this.engines = api.engines;
    this.skills = api.skills;
    const chat = api.chat;
    this.chat = Object.assign(chat, {
      async *text(body: T.ChatCompletionRequest, opts?: Parameters<Api['chat']['completionsStream']>[1]) {
        for await (const frame of chat.completionsStream(body, opts)) {
          const t = deltaText(frame);
          if (t) yield t;
        }
      },
    });
  }

  /**
   * A client for the gateway on this machine, authenticated as the current user: the URL
   * from `CHATPANEL_GATEWAY_URL` and the token from `CHATPANEL_GATEWAY_TOKEN` or the token
   * file. Node only — in a browser, construct one and `pair()`.
   */
  static async fromEnvironment(options: Omit<ChatPanelOptions, 'token' | 'baseUrl'> & { baseUrl?: string } = {}): Promise<ChatPanel> {
    const token = await discoverToken();
    return new ChatPanel({ ...options, baseUrl: options.baseUrl ?? discoverBaseUrl(), token: token || undefined });
  }

  /** GET /health — the version and capabilities. */
  health(): Promise<T.Health> { return this.gateway.health(); }

  /** POST /whoami — the trust class this client's credential earns. */
  whoami(): Promise<T.WhoAmI> { return this.gateway.whoami(); }

  /**
   * Exchange a one-time code (from `chatpanel-gateway pair`, or the desktop app) for the
   * token, and start using it. The token is RETURNED so the application can persist it —
   * in the platform keychain or a 0600 file, never in a log or a URL.
   */
  async pair(code: string): Promise<T.Paired> {
    const paired = await this.gateway.pair({ code: String(code).trim() });
    this.runtime.setToken(paired.token);
    return paired;
  }

  /** Any operation by id, for a route added to the contract before this package learnt a method for it. */
  request<R = unknown>(id: OperationId, args: CallArgs = {}): Promise<R> {
    return this.runtime.request<R>(OPERATIONS[id], args);
  }
}
