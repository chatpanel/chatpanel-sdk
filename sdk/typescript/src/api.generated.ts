// GENERATED FROM openapi/chatpanel-gateway.yaml BY tools/gen-core.mjs — DO NOT EDIT. Edit the spec, run `npm run gen:core`.
/* eslint-disable */
import type * as T from './types.generated.js';
import type { Runtime, RequestOptions, Operation, SseFrame } from './runtime.js';

/** Every operation in the contract, keyed by operationId — the route table the runtime executes. */
export const OPERATIONS = {
  "gateway.health": { id: "gateway.health", method: "GET", path: "/health", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "gateway.whoami": { id: "gateway.whoami", method: "POST", path: "/whoami", auth: "open", since: "0.9.0", stream: null, pathParams: [], queryParams: [] },
  "gateway.pairCode": { id: "gateway.pairCode", method: "POST", path: "/pair/code", auth: "token", since: "0.9.0", stream: null, pathParams: [], queryParams: [] },
  "gateway.pair": { id: "gateway.pair", method: "POST", path: "/pair", auth: "open", since: "0.9.0", stream: null, pathParams: [], queryParams: [] },
  "gateway.audit": { id: "gateway.audit", method: "GET", path: "/audit", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "models.list": { id: "models.list", method: "GET", path: "/v1/models", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "chat.completions": { id: "chat.completions", method: "POST", path: "/v1/chat/completions", auth: "open", since: null, stream: "sse-when-stream", pathParams: [], queryParams: [] },
  "redaction.preview": { id: "redaction.preview", method: "POST", path: "/redact", auth: "open", since: "0.6.62", stream: null, pathParams: [], queryParams: [] },
  "history.search": { id: "history.search", method: "POST", path: "/v1/history/search", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "history.smartSearch": { id: "history.smartSearch", method: "POST", path: "/v1/history/smart-search", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "history.research": { id: "history.research", method: "POST", path: "/v1/research", auth: "open", since: "0.58.0", stream: null, pathParams: [], queryParams: [] },
  "history.related": { id: "history.related", method: "GET", path: "/v1/history/related", auth: "open", since: null, stream: null, pathParams: [], queryParams: ["id","limit"] },
  "history.status": { id: "history.status", method: "GET", path: "/v1/history/status", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "history.list": { id: "history.list", method: "GET", path: "/v1/history/list", auth: "open", since: null, stream: null, pathParams: [], queryParams: ["limit","offset","type"] },
  "history.get": { id: "history.get", method: "GET", path: "/v1/history/get", auth: "open", since: null, stream: null, pathParams: [], queryParams: ["id","maxChars","offset"] },
  "history.records": { id: "history.records", method: "GET", path: "/v1/history/records", auth: "open", since: "0.10.0", stream: null, pathParams: [], queryParams: ["since","cursor","limit","kind","bytes","after_rev"] },
  "history.putRecords": { id: "history.putRecords", method: "PUT", path: "/v1/history/records", auth: "token", since: "0.10.0", stream: null, pathParams: [], queryParams: [] },
  "history.stream": { id: "history.stream", method: "GET", path: "/v1/history/stream", auth: "open", since: "0.11.0", stream: "sse", pathParams: [], queryParams: [] },
  "events.since": { id: "events.since", method: "GET", path: "/v1/events", auth: "token", since: "0.24.0", stream: null, pathParams: [], queryParams: ["cursor","limit","host"] },
  "events.push": { id: "events.push", method: "POST", path: "/v1/events", auth: "token", since: "0.24.0", stream: null, pathParams: [], queryParams: [] },
  "events.cursor": { id: "events.cursor", method: "GET", path: "/v1/events/cursor", auth: "token", since: "0.24.0", stream: null, pathParams: [], queryParams: [] },
  "events.stats": { id: "events.stats", method: "GET", path: "/v1/events/stats", auth: "token", since: "0.25.1", stream: null, pathParams: [], queryParams: [] },
  "events.stream": { id: "events.stream", method: "GET", path: "/v1/events/stream", auth: "token", since: "0.24.0", stream: "sse", pathParams: [], queryParams: ["cursor"] },
  "history.ingest": { id: "history.ingest", method: "POST", path: "/v1/history/ingest", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.list": { id: "memory.list", method: "GET", path: "/v1/memory/list", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.recall": { id: "memory.recall", method: "POST", path: "/v1/memory/recall", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.remember": { id: "memory.remember", method: "POST", path: "/v1/memory/remember", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "threads.send": { id: "threads.send", method: "POST", path: "/v1/threads/send", auth: "token", since: "0.69.0", stream: null, pathParams: [], queryParams: [] },
  "memory.forget": { id: "memory.forget", method: "POST", path: "/v1/memory/forget", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.sync": { id: "memory.sync", method: "POST", path: "/v1/memory/sync", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "prefs.get": { id: "prefs.get", method: "GET", path: "/v1/prefs", auth: "open", since: "0.6.77", stream: null, pathParams: [], queryParams: ["section","stamps"] },
  "prefs.put": { id: "prefs.put", method: "POST", path: "/v1/prefs", auth: "open", since: "0.6.77", stream: null, pathParams: [], queryParams: [] },
  "prefs.delete": { id: "prefs.delete", method: "DELETE", path: "/v1/prefs", auth: "open", since: "0.6.77", stream: null, pathParams: [], queryParams: ["section"] },
  "prefs.events": { id: "prefs.events", method: "GET", path: "/v1/prefs/events", auth: "open", since: "0.6.77", stream: "sse", pathParams: [], queryParams: [] },
  "teams.listRuns": { id: "teams.listRuns", method: "GET", path: "/v1/teams/runs", auth: "open", since: "0.6.78", stream: null, pathParams: [], queryParams: ["limit","team"] },
  "teams.createRun": { id: "teams.createRun", method: "POST", path: "/v1/teams/runs", auth: "open", since: "0.6.78", stream: null, pathParams: [], queryParams: [] },
  "teams.stream": { id: "teams.stream", method: "GET", path: "/v1/teams/stream", auth: "token", since: "0.55.0", stream: "sse", pathParams: [], queryParams: [] },
  "teams.getRun": { id: "teams.getRun", method: "GET", path: "/v1/teams/runs/{runId}", auth: "open", since: "0.6.78", stream: null, pathParams: ["runId"], queryParams: ["events"] },
  "teams.deleteRun": { id: "teams.deleteRun", method: "DELETE", path: "/v1/teams/runs/{runId}", auth: "open", since: "0.6.110", stream: null, pathParams: ["runId"], queryParams: [] },
  "teams.runEvents": { id: "teams.runEvents", method: "GET", path: "/v1/teams/runs/{runId}/events", auth: "open", since: "0.6.78", stream: "sse", pathParams: ["runId"], queryParams: ["after"] },
  "teams.appendRunEvents": { id: "teams.appendRunEvents", method: "POST", path: "/v1/teams/runs/{runId}/events", auth: "open", since: "0.6.78", stream: null, pathParams: ["runId"], queryParams: [] },
  "teams.stopRun": { id: "teams.stopRun", method: "POST", path: "/v1/teams/runs/{runId}/stop", auth: "open", since: "0.6.78", stream: null, pathParams: ["runId"], queryParams: [] },
  "teams.answer": { id: "teams.answer", method: "POST", path: "/v1/teams/runs/{runId}/answer", auth: "open", since: "0.6.81", stream: null, pathParams: ["runId"], queryParams: [] },
  "teams.decide": { id: "teams.decide", method: "POST", path: "/v1/teams/runs/{runId}/decide", auth: "open", since: "0.6.81", stream: null, pathParams: ["runId"], queryParams: [] },
  "teams.post": { id: "teams.post", method: "POST", path: "/v1/teams/runs/{runId}/post", auth: "open", since: "0.6.81", stream: null, pathParams: ["runId"], queryParams: [] },
  "teams.removeThread": { id: "teams.removeThread", method: "DELETE", path: "/v1/teams/runs/{runId}/threads/{threadId}", auth: "open", since: "0.6.106", stream: null, pathParams: ["runId","threadId"], queryParams: [] },
  "teams.handoff": { id: "teams.handoff", method: "POST", path: "/v1/teams/runs/{runId}/handoff", auth: "open", since: "0.6.85", stream: null, pathParams: ["runId"], queryParams: [] },
  "teams.checkpoint": { id: "teams.checkpoint", method: "GET", path: "/v1/teams/runs/{runId}/checkpoint", auth: "open", since: "0.6.85", stream: null, pathParams: ["runId"], queryParams: [] },
  "teams.claim": { id: "teams.claim", method: "POST", path: "/v1/teams/runs/{runId}/claim", auth: "open", since: "0.6.85", stream: null, pathParams: ["runId"], queryParams: [] },
  "projects.list": { id: "projects.list", method: "GET", path: "/v1/projects", auth: "open", since: "0.6.90", stream: null, pathParams: [], queryParams: ["limit","status"] },
  "projects.create": { id: "projects.create", method: "POST", path: "/v1/projects", auth: "open", since: "0.6.90", stream: null, pathParams: [], queryParams: [] },
  "projects.jobBoard": { id: "projects.jobBoard", method: "GET", path: "/v1/projects/jobs", auth: "open", since: "0.6.90", stream: null, pathParams: [], queryParams: [] },
  "projects.get": { id: "projects.get", method: "GET", path: "/v1/projects/{projectId}", auth: "open", since: "0.6.90", stream: null, pathParams: ["projectId"], queryParams: ["events"] },
  "projects.delete": { id: "projects.delete", method: "DELETE", path: "/v1/projects/{projectId}", auth: "open", since: "0.6.90", stream: null, pathParams: ["projectId"], queryParams: [] },
  "projects.events": { id: "projects.events", method: "GET", path: "/v1/projects/{projectId}/events", auth: "open", since: "0.6.90", stream: "sse", pathParams: ["projectId"], queryParams: ["after"] },
  "projects.appendEvents": { id: "projects.appendEvents", method: "POST", path: "/v1/projects/{projectId}/events", auth: "open", since: "0.6.90", stream: null, pathParams: ["projectId"], queryParams: [] },
  "projects.postJob": { id: "projects.postJob", method: "POST", path: "/v1/projects/{projectId}/jobs", auth: "open", since: "0.6.90", stream: null, pathParams: ["projectId"], queryParams: [] },
  "projects.patchJob": { id: "projects.patchJob", method: "POST", path: "/v1/projects/{projectId}/jobs/{jobId}", auth: "open", since: "0.6.90", stream: null, pathParams: ["projectId","jobId"], queryParams: [] },
  "projects.applications": { id: "projects.applications", method: "GET", path: "/v1/projects/{projectId}/jobs/{jobId}/applications", auth: "open", since: "0.6.90", stream: null, pathParams: ["projectId","jobId"], queryParams: ["reach","chatModel"] },
  "projects.recruit": { id: "projects.recruit", method: "POST", path: "/v1/projects/{projectId}/jobs/{jobId}/recruit", auth: "open", since: "0.6.90", stream: null, pathParams: ["projectId","jobId"], queryParams: [] },
  "agents.scorecards": { id: "agents.scorecards", method: "GET", path: "/v1/agents/scorecards", auth: "open", since: "0.6.87", stream: null, pathParams: [], queryParams: [] },
  "agents.scorecard": { id: "agents.scorecard", method: "GET", path: "/v1/agents/{agentId}/scorecard", auth: "open", since: "0.6.87", stream: null, pathParams: ["agentId"], queryParams: [] },
  "agents.rate": { id: "agents.rate", method: "POST", path: "/v1/agents/{agentId}/scorecard", auth: "open", since: "0.6.87", stream: null, pathParams: ["agentId"], queryParams: [] },
  "capabilities.list": { id: "capabilities.list", method: "GET", path: "/v1/capabilities", auth: "open", since: "0.13.0", stream: null, pathParams: [], queryParams: [] },
  "runtime.status": { id: "runtime.status", method: "GET", path: "/v1/runtime", auth: "open", since: "0.19.0", stream: null, pathParams: [], queryParams: [] },
  "runtime.plan": { id: "runtime.plan", method: "GET", path: "/v1/runtime/plan", auth: "open", since: "0.74.0", stream: null, pathParams: [], queryParams: ["service","model","ctx","need_mb"] },
  "runtime.engine": { id: "runtime.engine", method: "POST", path: "/v1/runtime/engines/{name}", auth: "token", since: "0.19.0", stream: null, pathParams: ["name"], queryParams: [] },
  "runtime.service": { id: "runtime.service", method: "POST", path: "/v1/runtime/services/{id}", auth: "token", since: "0.19.0", stream: null, pathParams: ["id"], queryParams: [] },
  "capabilities.detect": { id: "capabilities.detect", method: "POST", path: "/v1/detect", auth: "open", since: "0.13.0", stream: null, pathParams: [], queryParams: [] },
  "capabilities.rerank": { id: "capabilities.rerank", method: "POST", path: "/v1/rerank", auth: "open", since: "0.20.0", stream: null, pathParams: [], queryParams: [] },
  "capabilities.decide": { id: "capabilities.decide", method: "POST", path: "/v1/decide", auth: "open", since: "0.20.0", stream: null, pathParams: [], queryParams: [] },
  "retrieval.search": { id: "retrieval.search", method: "POST", path: "/v1/search", auth: "open", since: "0.15.0", stream: null, pathParams: [], queryParams: [] },
  "retrieval.searchAlias": { id: "retrieval.searchAlias", method: "GET", path: "/v1/search/{q}", auth: "open", since: "0.15.0", stream: null, pathParams: ["q"], queryParams: ["read"] },
  "retrieval.extract": { id: "retrieval.extract", method: "POST", path: "/v1/extract", auth: "open", since: "0.16.0", stream: null, pathParams: [], queryParams: [] },
  "retrieval.read": { id: "retrieval.read", method: "POST", path: "/v1/read", auth: "open", since: "0.14.0", stream: null, pathParams: [], queryParams: [] },
  "retrieval.readAlias": { id: "retrieval.readAlias", method: "GET", path: "/v1/read/{url}", auth: "open", since: "0.14.0", stream: null, pathParams: ["url"], queryParams: [] },
  "engines.list": { id: "engines.list", method: "GET", path: "/v1/engines", auth: "open", since: "0.6.89", stream: null, pathParams: [], queryParams: ["minCalls"] },
  "engines.card": { id: "engines.card", method: "GET", path: "/v1/engines/{engineKey}/card", auth: "open", since: "0.6.89", stream: null, pathParams: ["engineKey"], queryParams: ["entries","minCalls"] },
  "engines.appendEntry": { id: "engines.appendEntry", method: "POST", path: "/v1/engines/{engineKey}/entries", auth: "open", since: "0.6.89", stream: null, pathParams: ["engineKey"], queryParams: [] },
  "skills.quarantined": { id: "skills.quarantined", method: "GET", path: "/skills-quarantined", auth: "open", since: "0.48.0", stream: null, pathParams: [], queryParams: ["workdir"] },
  "a2a.card": { id: "a2a.card", method: "POST", path: "/a2a/card", auth: "token", since: "0.53.0", stream: null, pathParams: [], queryParams: [] },
  "a2a.message": { id: "a2a.message", method: "POST", path: "/a2a/message", auth: "token", since: "0.53.0", stream: null, pathParams: [], queryParams: [] },
  "a2a.stream": { id: "a2a.stream", method: "POST", path: "/a2a/message/stream", auth: "token", since: "0.53.0", stream: "sse", pathParams: [], queryParams: [] },
  "a2a.task": { id: "a2a.task", method: "POST", path: "/a2a/task", auth: "token", since: "0.53.0", stream: null, pathParams: [], queryParams: [] },
  "a2a.agents": { id: "a2a.agents", method: "GET", path: "/a2a/agents", auth: "token", since: "0.53.0", stream: null, pathParams: [], queryParams: [] },
  "agents.listDefs": { id: "agents.listDefs", method: "GET", path: "/agent-defs", auth: "open", since: "0.48.0", stream: null, pathParams: [], queryParams: ["workdir","dir"] },
  "agents.getDef": { id: "agents.getDef", method: "GET", path: "/agent-defs/{agentId}", auth: "open", since: "0.48.0", stream: null, pathParams: ["agentId"], queryParams: ["workdir"] },
  "agents.exportPlan": { id: "agents.exportPlan", method: "POST", path: "/agent-defs/export-plan", auth: "token", since: "0.48.0", stream: null, pathParams: [], queryParams: [] },
  "agents.exportDef": { id: "agents.exportDef", method: "POST", path: "/agent-defs/export", auth: "token", since: "0.48.0", stream: null, pathParams: [], queryParams: [] },
  "skills.list": { id: "skills.list", method: "GET", path: "/skills", auth: "open", since: "0.6.64", stream: null, pathParams: [], queryParams: ["workdir"] },
  "skills.get": { id: "skills.get", method: "GET", path: "/skills/{skillId}", auth: "open", since: "0.6.67", stream: null, pathParams: ["skillId"], queryParams: ["workdir"] },
  "fusions.list": { id: "fusions.list", method: "GET", path: "/v1/fusions", auth: "open", since: "0.33.0", stream: null, pathParams: [], queryParams: [] },
  "browser.status": { id: "browser.status", method: "GET", path: "/v1/browser", auth: "token", since: "0.59.0", stream: null, pathParams: [], queryParams: [] },
  "browser.call": { id: "browser.call", method: "POST", path: "/v1/browser/call", auth: "token", since: "0.59.0", stream: null, pathParams: [], queryParams: [] },
  "browser.stream": { id: "browser.stream", method: "GET", path: "/v1/browser/stream", auth: "token", since: "0.59.0", stream: "sse", pathParams: [], queryParams: [] },
  "browser.announce": { id: "browser.announce", method: "POST", path: "/v1/browser/announce", auth: "token", since: "0.59.0", stream: null, pathParams: [], queryParams: [] },
  "browser.result": { id: "browser.result", method: "POST", path: "/v1/browser/result", auth: "token", since: "0.59.0", stream: null, pathParams: [], queryParams: [] },
  "link.status": { id: "link.status", method: "GET", path: "/v1/link", auth: "token", since: "0.60.0", stream: null, pathParams: [], queryParams: [] },
  "link.pair": { id: "link.pair", method: "POST", path: "/v1/link/pair", auth: "token", since: "0.60.0", stream: null, pathParams: [], queryParams: [] },
  "link.route": { id: "link.route", method: "POST", path: "/v1/link/route", auth: "token", since: "0.65.0", stream: null, pathParams: [], queryParams: [] },
  "link.removeDevice": { id: "link.removeDevice", method: "DELETE", path: "/v1/link/devices/{deviceId}", auth: "token", since: "0.60.0", stream: null, pathParams: ["deviceId"], queryParams: [] },
  "link.approvals": { id: "link.approvals", method: "GET", path: "/v1/link/approvals", auth: "token", since: "0.91.0", stream: null, pathParams: [], queryParams: [] },
  "link.approvalsStream": { id: "link.approvalsStream", method: "GET", path: "/v1/link/approvals/stream", auth: "token", since: "0.91.0", stream: "sse", pathParams: [], queryParams: [] },
  "link.answerApproval": { id: "link.answerApproval", method: "POST", path: "/v1/link/approvals/{approvalId}", auth: "token", since: "0.91.0", stream: null, pathParams: ["approvalId"], queryParams: [] },
  "link.listFiles": { id: "link.listFiles", method: "GET", path: "/v1/link/files", auth: "token", since: "0.92.0", stream: null, pathParams: [], queryParams: [] },
} as const satisfies Record<string, Operation>;

export type OperationId = keyof typeof OPERATIONS;

/** Liveness, identity and pairing. */
export class GatewayApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Liveness, version and capabilities. Additive fields only. `version` is what every version gate reads. */
  health(opts?: RequestOptions): Promise<T.Health> {
    return this.rt.request(OPERATIONS["gateway.health"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** What the gateway makes of this caller. — Gateway 0.9.0+. */
  whoami(opts?: RequestOptions): Promise<T.WhoAmI> {
    return this.rt.request(OPERATIONS["gateway.whoami"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Mint a one-time pairing code (5 minutes, one use, 5 attempts). Only a caller that already holds the token may mint one — pairing widens nothing. — Requires the gateway token. Gateway 0.9.0+. */
  pairCode(opts?: RequestOptions): Promise<T.PairingCode> {
    return this.rt.request(OPERATIONS["gateway.pairCode"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Exchange a pairing code for the gateway token. — Gateway 0.9.0+. */
  pair(body: {
    /** The 6-digit code from `chatpanel-gateway pair`. */
    code: string;
  }, opts?: RequestOptions): Promise<T.Paired> {
    return this.rt.request(OPERATIONS["gateway.pair"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The egress audit — which hosts this gateway has contacted and which its config allows. The checkable claim behind "nothing leaves the machine". Admin-gated because it names the user's model endpoints. — Requires the gateway token. */
  audit(opts?: RequestOptions): Promise<T.Audit> {
    return this.rt.request(OPERATIONS["gateway.audit"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
}

/** What the gateway can route to. */
export class ModelsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Every model the gateway can route to. Describes the routing table, not the disk: a bridge agent is listed whether or not the CLI is installed. From 0.6.64 each agent carries `available`; from 0.6.66 a cloud model carries `configured: false` when a turn is known to fail for something the user can fix. */
  list(opts?: RequestOptions): Promise<T.ModelList> {
    return this.rt.request(OPERATIONS["models.list"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
}

/** The OpenAI-compatible chat endpoint, redacted and routed by the gateway. */
export class ChatApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** One chat turn through the gateway (OpenAI-compatible). Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. **Permission prompts (gateway 0.25.0+).** List a function tool named `permission_prompt` to say your client can answer an agent's "may I run this?" — the gateway strips it from what the agent sees and lets the agent ask instead of denying headlessly. The question arrives as a `tool_calls` stop on that tool, its arguments `{ tool, input, description, path, rules }`; answer with a `tool` message whose content is the JSON `{ "behavior": "allow" | "deny", "scope": "once" | "chat", "message"?: string }`. Anything else is a deny. **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (`codex`, `claude`, `opencode`, … — `provider_type: agent` in `GET /v1/models`) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** `{ type: 'auth', code: 'agent_lane_token_required' }`. The SDKs surface that as `ForbiddenError` with `status` 401. */
  completions(body: T.ChatCompletionRequest, opts?: RequestOptions & { headers?: { "X-ChatPanel-Redaction"?: "off"; "X-ChatPanel-Run"?: string } }): Promise<T.ChatCompletion> {
    return this.rt.request(OPERATIONS["chat.completions"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The same call with `stream: true` — one frame per chunk until `[DONE]`. */
  completionsStream(body: T.ChatCompletionRequest, opts?: RequestOptions & { headers?: { "X-ChatPanel-Redaction"?: "off"; "X-ChatPanel-Run"?: string } }): AsyncIterable<SseFrame<T.ChatCompletionChunk>> {
    return this.rt.stream<T.ChatCompletionChunk>(OPERATIONS["chat.completions"], { path: {  }, query: undefined, headers: opts?.headers, body: { ...(body as object), stream: true }, opts });
  }
}

/** Preview what the model would receive. */
export class RedactionApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** What the model would receive if this text were sent now. Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values. — Gateway 0.6.62+. */
  preview(body: {
    text: string;
  }, opts?: RequestOptions): Promise<T.RedactionPreview> {
    return this.rt.request(OPERATIONS["redaction.preview"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** The user's searchable history — chats, notes, meetings, briefs. */
export class HistoryApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** One keyword query over the warm index. */
  search(body: T.SearchRequest, opts?: RequestOptions): Promise<T.SearchResponse> {
    return this.rt.request(OPERATIONS["history.search"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Several phrasings at once, rank-fused; briefs lead. */
  smartSearch(body: T.SmartSearchRequest, opts?: RequestOptions): Promise<T.SmartSearchResponse> {
    return this.rt.request(OPERATIONS["history.smartSearch"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** A question about the person's own data, researched over the whole store. The shared bounded loop over the warm store: the question is framed (kind of record, people named, dates, the latest or the first, a count, counts per person or per month/week/day), every matching record is queried — sorted by date when it asks for the last one, counted when it asks how many — the top records are read in full, and the result carries what was searched, found and read, plus `attachment`: one block to hand a model, with record ids to cite. Pass `next` back as `previous` to continue the question ("no, even later", "what was it about"). Open like the other history reads; naming a `model` (to condense long records and check the evidence) runs a model on the caller's behalf and needs the gateway token. — Gateway 0.58.0+. */
  research(body: T.ResearchRequest, opts?: RequestOptions): Promise<T.ResearchResponse> {
    return this.rt.request(OPERATIONS["history.research"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The records most connected to one record. */
  related(query: { id: string; limit?: number }, opts?: RequestOptions): Promise<{
    ok: boolean;
    results: Array<T.SearchHit>;
  }> {
    return this.rt.request(OPERATIONS["history.related"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Size and freshness of the warm index (and the lossless tier from 0.10.0). */
  status(opts?: RequestOptions): Promise<T.HistoryStatus> {
    return this.rt.request(OPERATIONS["history.status"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** A page of the warm index — metadata only, no bodies. */
  list(query?: { limit?: number; offset?: number; type?: T.RecordType }, opts?: RequestOptions): Promise<T.HistoryPage> {
    return this.rt.request(OPERATIONS["history.list"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** One full warm record, optionally paged by characters. */
  get(query: { id: string; maxChars?: number; offset?: number }, opts?: RequestOptions): Promise<{
    ok: boolean;
    record: T.HistoryRecord;
  }> {
    return this.rt.request(OPERATIONS["history.get"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included. The lossless tier. A gateway without the SQLite store answers 501. — Gateway 0.10.0+. */
  records(query?: { since?: number; cursor?: string; limit?: number; kind?: string; bytes?: number; after_rev?: number }, opts?: RequestOptions): Promise<T.RecordsPage> {
    return this.rt.request(OPERATIONS["history.records"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Push whole records; the gateway derives the searchable text itself. — Requires the gateway token. Gateway 0.10.0+. */
  putRecords(body: T.PutRecordsRequest, opts?: RequestOptions): Promise<T.PutRecordsResponse> {
    return this.rt.request(OPERATIONS["history.putRecords"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Live record changes — `hello` once, then a `records` event per change. — Gateway 0.11.0+. */
  stream(opts?: RequestOptions): AsyncIterable<SseFrame<T.HistoryStreamEvent>> {
    return this.rt.stream<T.HistoryStreamEvent>(OPERATIONS["history.stream"], { path: {  }, query: undefined, headers: opts?.headers, opts });
  }
  /** Push flattened (lossy) records into the warm index. — Requires the gateway token. */
  ingest(body: T.IngestRequest, opts?: RequestOptions): Promise<{
    ok: boolean;
    size: number;
  }> {
    return this.rt.request(OPERATIONS["history.ingest"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** The durable event log, merged across every client and served as one CloudEvents 1.0 stream — metadata only (refs and counts, never content), ordered by `(host, seq)` and `causes`, never by clock (docs/event-stream-sync.md E1). */
export class EventsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged. — Requires the gateway token. Gateway 0.24.0+. */
  since(query?: { cursor?: string; limit?: number; host?: string }, opts?: RequestOptions): Promise<T.EventsPage> {
    return this.rt.request(OPERATIONS["events.since"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named. Idempotent on event id, so a retry is free. A `seq` that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in `cursor` (the gateway's highest `seq` per host) and stop re-sending what `rejected` names. At most 2000 events per batch. A gateway without SQLite answers 501. — Requires the gateway token. Gateway 0.24.0+. */
  push(body: T.PushEventsRequest, opts?: RequestOptions): Promise<T.PushEventsResponse> {
    return this.rt.request(OPERATIONS["events.push"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The gateway's highest `seq` per host — what a client asks for before it pushes. — Requires the gateway token. Gateway 0.24.0+. */
  cursor(opts?: RequestOptions): Promise<T.EventsCursor> {
    return this.rt.request(OPERATIONS["events.cursor"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap. — Requires the gateway token. Gateway 0.25.1+. */
  stats(opts?: RequestOptions): Promise<T.EventsStats> {
    return this.rt.request(OPERATIONS["events.stats"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first. — Requires the gateway token. Gateway 0.24.0+. */
  stream(query?: { cursor?: string }, opts?: RequestOptions): AsyncIterable<SseFrame<T.EventsStreamEvent>> {
    return this.rt.stream<T.EventsStreamEvent>(OPERATIONS["events.stream"], { path: {  }, query: query, headers: opts?.headers, opts });
  }
}

/** Durable facts about the user, carried into every turn on every client. */
export class MemoryApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Every memory. */
  list(opts?: RequestOptions): Promise<T.MemoryList> {
    return this.rt.request(OPERATIONS["memory.list"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** The memories relevant to a text, and a prompt block that carries them. */
  recall(body: T.RecallRequest, opts?: RequestOptions): Promise<T.RecallResponse> {
    return this.rt.request(OPERATIONS["memory.recall"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Save a durable fact. Never anonymous — `source` is recorded. — Requires the gateway token. */
  remember(body: T.RememberRequest, opts?: RequestOptions): Promise<T.RememberResponse> {
    return this.rt.request(OPERATIONS["memory.remember"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Forget memories matching an id or words. — Requires the gateway token. */
  forget(body: {
    query: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    removed: number;
    size: number;
  }> {
    return this.rt.request(OPERATIONS["memory.forget"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Two-way merge in one round trip — push what you have, receive the full set. — Requires the gateway token. */
  sync(body: {
    upserts?: Array<T.Memory>;
    removes?: Array<string>;
  }, opts?: RequestOptions): Promise<T.MemorySyncResponse> {
    return this.rt.request(OPERATIONS["memory.sync"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** The person's chats, asked by one another — any chat's own model answers in it. */
export class ThreadsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Ask one of the person's chats and get its answer; the exchange is added to that chat. The chat's own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; `dryRun` returns the chat's title and model for that question without running anything. — Requires the gateway token. Gateway 0.69.0+. */
  send(body: {
    /** The chat to ask — a record id, chat:… */
    to: string;
    message: string;
    /** The chat asking, so the other one says who asked. */
    from?: {
      id?: string;
      title?: string;
    };
    /** Only which chat and model — nothing is run. */
    dryRun?: boolean;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    title: string;
    model: string;
    reply?: string;
  }> {
    return this.rt.request(OPERATIONS["threads.send"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** The settings every client shares. */
export class PrefsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** The shared sections, or only their stamps. — Gateway 0.6.77+. */
  get(query?: { section?: string; stamps?: boolean }, opts?: RequestOptions): Promise<T.Prefs> {
    return this.rt.request(OPERATIONS["prefs.get"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Write sections; per-section last-writer-wins by stamp. — Gateway 0.6.77+. */
  put(body: T.PrefsWrite, opts?: RequestOptions): Promise<T.PrefsWriteResult> {
    return this.rt.request(OPERATIONS["prefs.put"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Remove one section. — Gateway 0.6.77+. */
  delete(query: { section: string }, opts?: RequestOptions): Promise<{
    ok: boolean;
    removed: boolean;
  }> {
    return this.rt.request(OPERATIONS["prefs.delete"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Live — which sections another client wrote. — Gateway 0.6.77+. */
  events(opts?: RequestOptions): AsyncIterable<SseFrame<T.PrefsEvent>> {
    return this.rt.stream<T.PrefsEvent>(OPERATIONS["prefs.events"], { path: {  }, query: undefined, headers: opts?.headers, opts });
  }
}

/** Team runs — the board every client can read. */
export class TeamsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** The board — recent runs, newest first. — Gateway 0.6.78+. */
  listRuns(query?: { limit?: number; team?: string }, opts?: RequestOptions): Promise<{
    ok: boolean;
    runs: Array<T.TeamRun>;
  }> {
    return this.rt.request(OPERATIONS["teams.listRuns"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Open a run record. — Gateway 0.6.78+. */
  createRun(body: T.TeamRunCreate, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.createRun"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Run changes, pushed — `hello` once, then a `run` notice whenever a run is created, moves or is removed. A Runs or Board view listens here and re-reads a run (`GET /v1/teams/runs/{runId}`) or the list only when a notice names one, instead of polling. Facts only — a task's streamed text never produces a notice. Staleness is judged by the clock, not by an event, so a view keeps a slow re-read beside the stream. — Requires the gateway token. Gateway 0.55.0+. */
  stream(opts?: RequestOptions): AsyncIterable<SseFrame<T.TeamsStreamEvent>> {
    return this.rt.stream<T.TeamsStreamEvent>(OPERATIONS["teams.stream"], { path: {  }, query: undefined, headers: opts?.headers, opts });
  }
  /** One run, optionally with its events. — Gateway 0.6.78+. */
  getRun(runId: string, query?: { events?: boolean }, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.getRun"], { path: { runId }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Remove a run; a live one is stopped first. — Gateway 0.6.110+. */
  deleteRun(runId: string, opts?: RequestOptions): Promise<{
    ok: boolean;
    removed: boolean;
  }> {
    return this.rt.request(OPERATIONS["teams.deleteRun"], { path: { runId }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Tail a run — the record first, replay from `after`, then live. — Gateway 0.6.78+. */
  runEvents(runId: string, query?: { after?: number }, opts?: RequestOptions): AsyncIterable<SseFrame<T.RunEvent>> {
    return this.rt.stream<T.RunEvent>(OPERATIONS["teams.runEvents"], { path: { runId }, query: query, headers: opts?.headers, opts });
  }
  /** The running client appends events. — Gateway 0.6.78+. */
  appendRunEvents(runId: string, body: {
    events: Array<T.RunEvent>;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.appendRunEvents"], { path: { runId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Ask the running client to stop. — Gateway 0.6.78+. */
  stopRun(runId: string, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.stopRun"], { path: { runId }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** A person answers an ask on the board. — Gateway 0.6.81+. */
  answer(runId: string, body: {
    threadId: string;
    text: string;
    by?: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.answer"], { path: { runId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Approve or reject a post. — Gateway 0.6.81+. */
  decide(runId: string, body: {
    postId: string;
    status: "approved" | "rejected";
    by?: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.decide"], { path: { runId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Post a note to a thread. — Gateway 0.6.81+. */
  post(runId: string, body: {
    threadId: string;
    text: string;
    kind?: string;
    replyTo?: string;
    by?: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.post"], { path: { runId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** A person removes a thread from the board. — Gateway 0.6.106+. */
  removeThread(runId: string, threadId: string, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.removeThread"], { path: { runId, threadId }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Continue a task on another model. — Gateway 0.6.85+. */
  handoff(runId: string, body: {
    taskId: string;
    model: string;
    by?: string;
    reason?: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.handoff"], { path: { runId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** What a client needs to resume a run whose client went away. — Gateway 0.6.85+. */
  checkpoint(runId: string, opts?: RequestOptions): Promise<{
    ok: boolean;
    checkpoint: T.AnyObject;
  }> {
    return this.rt.request(OPERATIONS["teams.checkpoint"], { path: { runId }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** A client takes a stopped or stale run over. — Gateway 0.6.85+. */
  claim(runId: string, body: {
    client: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    run: T.TeamRun;
  }> {
    return this.rt.request(OPERATIONS["teams.claim"], { path: { runId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** The project record — the page a goal starts on and everything done for it. */
export class ProjectsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Projects, newest activity first, jobs counted. — Gateway 0.6.90+. */
  list(query?: { limit?: number; status?: string }, opts?: RequestOptions): Promise<{
    ok: boolean;
    projects: Array<T.Project>;
  }> {
    return this.rt.request(OPERATIONS["projects.list"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Open a record (idempotent) or update the page. — Gateway 0.6.90+. */
  create(body: {
    id?: string;
    project?: T.AnyObject;
    by?: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    project: T.Project;
  }> {
    return this.rt.request(OPERATIONS["projects.create"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Every open posting across projects. — Gateway 0.6.90+. */
  jobBoard(opts?: RequestOptions): Promise<{
    ok: boolean;
    jobs: Array<T.AnyObject>;
  }> {
    return this.rt.request(OPERATIONS["projects.jobBoard"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** The record — jobs, runs, spend, decisions, report. — Gateway 0.6.90+. */
  get(projectId: string, query?: { events?: boolean }, opts?: RequestOptions): Promise<{
    ok: boolean;
    project: T.Project;
  }> {
    return this.rt.request(OPERATIONS["projects.get"], { path: { projectId }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Remove a project record. — Gateway 0.6.90+. */
  delete(projectId: string, opts?: RequestOptions): Promise<{
    ok: boolean;
    removed: boolean;
  }> {
    return this.rt.request(OPERATIONS["projects.delete"], { path: { projectId }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Tail a project — hello, replay, then live. — Gateway 0.6.90+. */
  events(projectId: string, query?: { after?: number }, opts?: RequestOptions): AsyncIterable<SseFrame<T.RunEvent>> {
    return this.rt.stream<T.RunEvent>(OPERATIONS["projects.events"], { path: { projectId }, query: query, headers: opts?.headers, opts });
  }
  /** The executive loop appends (status, run.linked, run.spent, decision, report). — Gateway 0.6.90+. */
  appendEvents(projectId: string, body: {
    events: Array<T.RunEvent>;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    project: T.Project;
  }> {
    return this.rt.request(OPERATIONS["projects.appendEvents"], { path: { projectId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Post a job. — Gateway 0.6.90+. */
  postJob(projectId: string, body: {
    job: T.AnyObject;
    by?: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    project: T.Project;
  }> {
    return this.rt.request(OPERATIONS["projects.postJob"], { path: { projectId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Move a job along its state machine. — Gateway 0.6.90+. */
  patchJob(projectId: string, jobId: string, body: {
    patch: T.AnyObject;
    by?: string;
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
    project: T.Project;
  }> {
    return this.rt.request(OPERATIONS["projects.patchJob"], { path: { projectId, jobId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The pool applies at once; `prompt` is the evaluator's, for a structured call. — Gateway 0.6.90+. */
  applications(projectId: string, jobId: string, query?: { reach?: string; chatModel?: string }, opts?: RequestOptions): Promise<T.AnyObject> {
    return this.rt.request(OPERATIONS["projects.applications"], { path: { projectId, jobId }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** One pass — fit recomputed, the evaluation read through the schema, the pick landed as events. — Gateway 0.6.90+. */
  recruit(projectId: string, jobId: string, body: {
    by?: string;
    reach?: string;
    chatModel?: string;
    evaluation?: T.AnyObject;
    text?: string;
  }, opts?: RequestOptions): Promise<T.AnyObject> {
    return this.rt.request(OPERATIONS["projects.recruit"], { path: { projectId, jobId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** Attested per-agent scorecards. */
export class AgentsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Every agent's scorecard. — Gateway 0.6.87+. */
  scorecards(opts?: RequestOptions): Promise<{
    ok: boolean;
    agents: Array<T.AnyObject>;
  }> {
    return this.rt.request(OPERATIONS["agents.scorecards"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** One agent's attested scorecard. — Gateway 0.6.87+. */
  scorecard(agentId: string, opts?: RequestOptions): Promise<T.AnyObject> {
    return this.rt.request(OPERATIONS["agents.scorecard"], { path: { agentId }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** A person rates the agent's work on a run, task or job. — Gateway 0.6.87+. */
  rate(agentId: string, body: {
    score: number;
    note?: string;
    about?: string;
    by?: string;
    runId?: string;
    taskId?: string;
    jobId?: string;
    refs?: T.AnyObject;
  }, opts?: RequestOptions): Promise<T.AnyObject> {
    return this.rt.request(OPERATIONS["agents.rate"], { path: { agentId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The agent definitions on this machine, from every tool that writes one. `.claude/agents/*.md`, `.codex/agents/*.toml`, `~/.chatpanel/agents/*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them. — Gateway 0.48.0+. */
  listDefs(query?: { workdir?: string; dir?: string }, opts?: RequestOptions): Promise<{
    agents: Array<T.AgentDef>;
    /** Definitions the scanner refused. */
    quarantined?: Array<{
      [key: string]: unknown;
    }>;
    /** Files that parsed as a definition and could not be made one. */
    problems?: Array<{
      [key: string]: unknown;
    }>;
  }> {
    return this.rt.request(OPERATIONS["agents.listDefs"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** One agent definition, prompt included. — Gateway 0.48.0+. */
  getDef(agentId: string, query?: { workdir?: string }, opts?: RequestOptions): Promise<{
    agent?: T.AgentDef;
    dialect?: "chatpanel" | "claude" | "codex" | "a2a";
    source?: string;
    path?: string;
  }> {
    return this.rt.request(OPERATIONS["agents.getDef"], { path: { agentId }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** What an export would write, and what the target cannot carry — without writing it. A separate call from the export itself, deliberately: "show me what you are about to do to my Claude Code directory" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry. — Requires the gateway token. Gateway 0.48.0+. */
  exportPlan(body: T.AgentExportRequest, opts?: RequestOptions): Promise<T.AgentExportPlan> {
    return this.rt.request(OPERATIONS["agents.exportPlan"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Write an agent definition into another tool's folder. Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`. — Requires the gateway token. Gateway 0.48.0+. */
  exportDef(body: T.AgentExportRequest, opts?: RequestOptions): Promise<{
    ok?: boolean;
    path?: string;
    to?: string;
    backedUp?: boolean;
    status?: "new" | "ours" | "theirs";
    fidelity?: T.AgentFidelity;
  }> {
    return this.rt.request(OPERATIONS["agents.exportDef"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** The small non-generative models this gateway provides — discovery, and one standard signature per capability (docs/capability-endpoints.md). */
export class CapabilitiesApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** What this provider can do — which capabilities, models, measured cost and runtime state. The discovery document a client chooses a provider from: one entry per capability (`detect`, `stt`, `tts` today; `decide`, `rerank`, `embed` as they land), each at its standard route, with the models it can serve, the loaded model's own label vocabulary (`detect`), the measured latency record, and the runtime's state. Never loads a model. — Gateway 0.13.0+. */
  list(opts?: RequestOptions): Promise<T.CapabilitiesDocument> {
    return this.rt.request(OPERATIONS["capabilities.list"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Find entities in text — the model's own labels, with offsets and scores. The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. — Gateway 0.13.0+. */
  detect(body: T.DetectRequest, opts?: RequestOptions): Promise<T.DetectResponse> {
    return this.rt.request(OPERATIONS["capabilities.detect"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Order documents by relevance to a query — a cross-encoder, no language model. The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the `reranker` container started under Settings › Runtime (Text Embeddings Inference with `BAAI/bge-reranker-v2-m3`, loopback-only), or the server `capabilities.rerank` names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 `bad_shape`, never a bad order). `budgetMs` is refused (503 `over_budget`) from the gateway's own latency record before dialling. 404 `no_provider` until a provider is configured; 503 `provider_unavailable` when it does not answer. `GET /v1/capabilities` lists it only while configured. — Gateway 0.20.0+. */
  rerank(body: T.RerankRequest, opts?: RequestOptions): Promise<T.RerankResponse> {
    return this.rt.request(OPERATIONS["capabilities.rerank"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Typed decisions over a text — a choice, a score or a yes/no, each with a probability. ChatPanel's `decide` signature (docs/capability-endpoints.md §4.2): `state` is the text judged, `questions` are keyed by identifier — a `choice` picks one of its `options`, a `score` places the state on `options` read as an ordered rubric, a `noul` is yes/no. Served BY PROXY through the adapter the config names: the `opendecision` container started under Settings › Runtime (TypeSafe's `/v1/systemone` shape, loopback-only), or a server `capabilities.decide` names (a Jev endpoint with a token, another gateway). `calibrated` in the response says whether `p` may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as `/v1/rerank`. — Gateway 0.20.0+. */
  decide(body: T.DecideRequest, opts?: RequestOptions): Promise<T.DecideResponse> {
    return this.rt.request(OPERATIONS["capabilities.decide"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** What runs processes for the user and how — the process sandbox (through the bridge), the container engine on this machine, and the services the gateway runs for the user (docs/sandboxing.md S1). */
export class RuntimeApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** The runtime — the process sandbox, what is running now, the container engine, the services. One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. — Gateway 0.19.0+. */
  status(opts?: RequestOptions): Promise<T.RuntimeDocument> {
    return this.rt.request(OPERATIONS["runtime.status"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free. Checked against what Heatwatch (an optional macOS tool on `127.0.0.1:7878`) says is reclaimable NOW, with the apps to close when it is short — or, without Heatwatch, against the machine's total memory, and `source` says which (`heatwatch` | `total-memory`). The KV cache is counted from the model's `config.json` when it is in the gateway's model cache (`contextCounted` says whether it was). A model the catalogue does not list needs `need_mb`. A native service's start makes the same check and refuses a model that does not fit what is free, unless the start says `force: true`. `runtime.heatwatch: false` stops the gateway asking Heatwatch. — Gateway 0.74.0+. */
  plan(query?: { service?: string; model?: string; ctx?: number; need_mb?: number }, opts?: RequestOptions): Promise<T.RuntimePlan> {
    return this.rt.request(OPERATIONS["runtime.plan"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Start the container engine (Podman — creates and starts its machine where one is needed). `{ action: 'start' }`. Podman on macOS and Windows runs containers in a machine: made on first start (`podman machine init`), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. — Requires the gateway token. Gateway 0.19.0+. */
  engine(name: string, body: {
    action?: "start";
  }, opts?: RequestOptions): Promise<T.RuntimeActionResult> {
    return this.rt.request(OPERATIONS["runtime.engine"], { path: { name }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it. `{ action: 'start' | 'stop' }`. `start` brings the engine up if it is not, runs the service's container from its kit (SearXNG: `127.0.0.1:8888`, JSON on, the limiter off, a random secret, capabilities dropped; `reranker` on 8889 and `opendecision` on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (`search.searxng.url`; `capabilities.rerank` / `capabilities.decide`, so `/v1/rerank` and `/v1/decide` are served and listed). `stop` stops the container and clears what it set. `{ action: 'model', model }` (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (`GET /v1/runtime` `services.<id>.models`) or a Hugging Face `owner/name` — gated by the container ENGINE's memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. — Requires the gateway token. Gateway 0.19.0+. */
  service(id: string, body: {
    action?: "start" | "stop" | "model";
    /** With `action: model` — a catalogue id or a Hugging Face owner/name. */
    model?: string;
    /** With `action: start` (gateway 0.74+) — start a native model past the live-memory check (`GET /v1/runtime/plan`). */
    force?: boolean;
  }, opts?: RequestOptions): Promise<T.RuntimeActionResult> {
    return this.rt.request(OPERATIONS["runtime.service"], { path: { id }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** Web retrieval — search through the provider the user chose, and a page as LLM-ready Markdown, cited where it landed, with its sections (docs/web-retrieval.md). */
export class RetrievalApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Search the web through the provider this gateway is configured with; optionally read the top results in the same request. The `search` capability (docs/web-retrieval.md §4.1). Providers are listed by `GET /v1/capabilities`: `serp` (a results page fetched and read with the shared rules — no install, the default) and `searxng` (the user's own metasearch, preferred the moment it answers). `read: N` reads the top N results in parallel in this request, each carrying a §4.2 document under `read` — one round-trip instead of 1 + N; a page that will not be read keeps its snippet with `read.restricted.reason`. The query goes through layer-1 redaction (emails, cards, keys, dictionary terms — never the name detector) before it leaves; what was replaced is dropped and `redacted: true` says so; a query with nothing left is 400 `unsafe_query`. `freshness` and `lang` are honoured by SearXNG; `site` by both. `budgetMs` covers the search and its reads and is refused (503 `over_budget`) from the provider's record. `engines` names what was actually asked, so an empty list can be told from a blocked one. Since gateway 0.78.0 `serp` asks one built-in engine per search (DuckDuckGo, Startpage, Bing) plus any search API the person added in the gateway's settings (Exa, Brave, Tavily, Serper, SerpApi, Google Programmable Search, Jina, Mwmbl, or one they describe — keyed ones first); an engine that refuses rests for a while. Since gateway 0.79.0 every result is tagged with its `engine` and `via` (the kind of door it came through), and `trail` says what each provider and engine asked did and, when nothing came back, why — `nothing` (they answered, found nothing) reads differently from `blocked`, `resting` or `offline`. Both are optional: an older gateway sends neither. — Gateway 0.15.0+. */
  search(body: T.WebSearchRequest, opts?: RequestOptions): Promise<T.WebSearchResponse> {
    return this.rt.request(OPERATIONS["retrieval.search"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content. Same search as `POST /v1/search` with `read: 5` (`?read=N`, 0–10, changes it), answered in the shape the shipped ChatPanel extension's *Web search API* engine already reads: `{ code, status, data: [{ url, title, description, content, publishedTime? }] }` where `content` is the page's Markdown when it was read and the snippet otherwise — nothing needs fetching on the client. A Bearer token is accepted and ignored. Since gateway 0.79.0 each item may carry `engine` and `via`, and the top level `trail`, exactly as `POST /v1/search` does (a Jina reader ignores them). — Gateway 0.15.0+. */
  searchAlias(q: string, query?: { read?: number }, opts?: RequestOptions): Promise<{
    code: number;
    status: number;
    data: Array<{
      url: string;
      title: string;
      description: string;
      content: string;
      publishedTime?: string;
      /** The engine that produced it, as on `WebSearchResult.engine`. Since gateway 0.79.0. */
      engine?: string;
      /** The kind of door it came through, as on `WebSearchResult.via`. Since gateway 0.79.0. */
      via?: string;
    }>;
    trail?: T.SearchTrail;
  }> {
    return this.rt.request(OPERATIONS["retrieval.searchAlias"], { path: { q }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash. The `extract` capability (docs/capability-endpoints.md): the third leg beside `search` and `read`. Two calls on one route. With `name` and `data` (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (`hash`, SHA-256 of the bytes), its `type` as read from the bytes, its `title` when it has one and how many `pages` it has; the text stays on the server. With `hash` and `page`, one page's text comes back; the bytes crossed once. A page is the format's own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is `scanned: true` with empty pages, never OCR'd), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 `unknown_document`: send the bytes again. `budgetMs` is refused (503 `over_budget`) from the worker's own record. — Gateway 0.16.0+. */
  extract(body: T.ExtractRequest, opts?: RequestOptions): Promise<T.ExtractResponse> {
    return this.rt.request(OPERATIONS["retrieval.extract"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Read one public page as LLM-ready Markdown, cited where it landed, with its sections. The `read` capability (docs/web-retrieval.md §4.2). The page is fetched from this machine as the user's agent — public web only (the shared SSRF guard, re-checked where a redirect lands), a browser User-Agent, no cookies — and turned into Markdown that keeps headings, lists, tables, code and links. `url` in the answer is where the page should be CITED: the same-origin canonical when it declares one, else where the fetch landed; `sections` are the page's own heading ids with their offset into the content so a citation can point at `url#section`. A page that could not be read as the article — a login wall, a paywall, a 429 — is a 200 with `restricted.reason` and the caller's `snippet` standing in for the content, never the wall rendered as prose. `maxChars` cuts at a section boundary. A read is served from this process's page cache when fresh (`cached: true`), revalidated with its ETag when stale. `budgetMs` is refused (503 `over_budget`) from the provider's own record, never missed. Providers are listed by `GET /v1/capabilities`: `defuddle` (in-process), `text` (the DOM-less fallback), `remote` (an `r.jina.ai`-shaped reader configured under `read.remote`). — Gateway 0.14.0+. */
  read(body: T.ReadRequest, opts?: RequestOptions): Promise<T.ReadResponse> {
    return this.rt.request(OPERATIONS["retrieval.read"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it. Same read as `POST /v1/read`, addressed the way the shipped ChatPanel extension's *reader service* slot (and anything else built for `r.jina.ai`) already addresses a reader: the page URL appended to the base, as is or percent-encoded, with its own query string kept. Answers `text/plain` with `Title:` / `URL Source:` / `Published Time:` header lines, a blank line and `Markdown Content:`; under `Accept: application/json` the §4.2 document wrapped as `{ code, status, data }`. `X-Return-Format: text` selects the text form. A Bearer token is accepted and ignored. — Gateway 0.14.0+. */
  readAlias(url: string, opts?: RequestOptions & { headers?: { "Accept"?: string; "X-Return-Format"?: "markdown" | "text" } }): Promise<{
    code: number;
    status: number;
    data: T.ReadResponse;
  }> {
    return this.rt.request(OPERATIONS["retrieval.readAlias"], { path: { url }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
}

/** The model ledger — every engine's card. */
export class EnginesApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Every engine's card. — Gateway 0.6.89+. */
  list(query?: { minCalls?: number }, opts?: RequestOptions): Promise<{
    ok: boolean;
    engines: Array<T.AnyObject>;
  }> {
    return this.rt.request(OPERATIONS["engines.list"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** One engine's card, optionally with entries. — Gateway 0.6.89+. */
  card(engineKey: string, query?: { entries?: boolean; minCalls?: number }, opts?: RequestOptions): Promise<T.AnyObject> {
    return this.rt.request(OPERATIONS["engines.card"], { path: { engineKey }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** Append a ledger entry for an engine. — Gateway 0.6.89+. */
  appendEntry(engineKey: string, body: T.AnyObject, opts?: RequestOptions): Promise<T.AnyObject> {
    return this.rt.request(OPERATIONS["engines.appendEntry"], { path: { engineKey }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** The skills on this machine (served through the bridge). */
export class SkillsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Packages the admission scanner refused — what is on disk and deliberately not listed. A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of `GET /skills` entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0. — Gateway 0.48.0+. */
  quarantined(query?: { workdir?: string }, opts?: RequestOptions): Promise<{
    quarantined: Array<T.QuarantinedSkill>;
  }> {
    return this.rt.request(OPERATIONS["skills.quarantined"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** The skills on this machine — with a prompt character count, not the prompt. — Gateway 0.6.64+. */
  list(query?: { workdir?: string }, opts?: RequestOptions): Promise<{
    skills: Array<T.Skill>;
  }> {
    return this.rt.request(OPERATIONS["skills.list"], { path: {  }, query: query, headers: opts?.headers, body: undefined, opts });
  }
  /** One skill, with its prompt. — Gateway 0.6.67+. */
  get(skillId: string, query?: { workdir?: string }, opts?: RequestOptions): Promise<{
    skill: T.Skill | null;
  }> {
    return this.rt.request(OPERATIONS["skills.get"], { path: { skillId }, query: query, headers: opts?.headers, body: undefined, opts });
  }
}

/** Remote agents reached over the Agent2Agent protocol — discovery, messages, tasks. */
export class A2aApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Fetch a remote agent's card, revalidating the one already held. The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not. — Requires the gateway token. Gateway 0.53.0+. */
  card(body: {
    /** The agent's origin, or a card URL outright. */
    url: string;
    /** Skip the TTL and revalidate — the ETag is still sent. */
    force?: boolean;
    /** Drop the cached card first. */
    forget?: boolean;
    /** An Authorization header value for agents that need one. */
    auth?: string;
  }, opts?: RequestOptions): Promise<{
    ok?: boolean;
    card?: T.AgentCard;
    /** Changes when the card's content does. */
    fingerprint?: string;
    /** false when the peer answered 304. */
    fresh?: boolean;
    changed?: boolean;
    url?: string;
  }> {
    return this.rt.request(OPERATIONS["a2a.card"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Send a message to a remote agent and wait for the answer. The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting. — Requires the gateway token. Gateway 0.53.0+. */
  message(body: T.A2ASendRequest, opts?: RequestOptions): Promise<T.A2AResult> {
    return this.rt.request(OPERATIONS["a2a.message"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Send a message and stream the answer as it is produced. Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`. — Requires the gateway token. Gateway 0.53.0+. */
  stream(body: T.A2ASendRequest, opts?: RequestOptions): AsyncIterable<SseFrame<unknown>> {
    return this.rt.stream<unknown>(OPERATIONS["a2a.stream"], { path: {  }, query: undefined, headers: opts?.headers, opts });
  }
  /** Poll or cancel a task on a remote agent. — Requires the gateway token. Gateway 0.53.0+. */
  task(body: {
    id: string;
    url?: string;
    card?: T.AgentCard;
    /** Cancel instead of polling. */
    cancel?: boolean;
    auth?: string;
  }, opts?: RequestOptions): Promise<T.A2AResult> {
    return this.rt.request(OPERATIONS["a2a.task"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Every remote agent this gateway has spoken to. What the audit lists — an agent a person connected is a host this machine talks to. — Requires the gateway token. Gateway 0.53.0+. */
  agents(opts?: RequestOptions): Promise<{
    agents: Array<{
      [key: string]: unknown;
    }>;
  }> {
    return this.rt.request(OPERATIONS["a2a.agents"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
}

/** Several models as one — union, draft + target, fallback. */
export class FusionsApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Several models as one — the fusions this gateway has. Derived from state (the entity detector's union once a companion is ready, an engine drafting with a second model) and composed by the user (`POST /config { fusions }`, a chat fallback in order). A chat turn names a fallback as `model: "fusion:<id>"` and is routed to the first member that is up; `x-chatpanel-fusion` on the response says which. — Gateway 0.33.0+. */
  list(opts?: RequestOptions): Promise<T.FusionList> {
    return this.rt.request(OPERATIONS["fusions.list"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
}

/** A local client using the person's own browser through the ChatPanel extension — the browser holds a stream, a client's page-tool call is carried to it and its result back. Every action still passes the extension's site grant, its commit confirmation and its bot-check hand-off. */
export class BrowserApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** Is a browser connected, which one, and the page tool it offers. The spec and guidance are the extension's own — a client hands them to its model as they are. — Requires the gateway token. Gateway 0.59.0+. */
  status(opts?: RequestOptions): Promise<T.BrowserStatus> {
    return this.rt.request(OPERATIONS["browser.status"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Run one page action in the person's browser and wait for its result. Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding. — Requires the gateway token. Gateway 0.59.0+. */
  call(body: T.BrowserCall, opts?: RequestOptions): Promise<T.BrowserCallResult> {
    return this.rt.request(OPERATIONS["browser.call"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The browser's end — `hello` with its session, then a `call` frame per action to run. — Requires the gateway token. Gateway 0.59.0+. */
  stream(opts?: RequestOptions): AsyncIterable<SseFrame<T.BrowserStreamEvent>> {
    return this.rt.stream<T.BrowserStreamEvent>(OPERATIONS["browser.stream"], { path: {  }, query: undefined, headers: opts?.headers, opts });
  }
  /** The browser says what it offers — its page tool spec and guidance. — Requires the gateway token. Gateway 0.59.0+. */
  announce(body: T.BrowserAnnounce, opts?: RequestOptions): Promise<{
    ok: boolean;
  }> {
    return this.rt.request(OPERATIONS["browser.announce"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** The browser answers a call it ran. Only the session the call went to may answer it. — Requires the gateway token. Gateway 0.59.0+. */
  result(body: T.BrowserResult, opts?: RequestOptions): Promise<{
    ok: boolean;
  }> {
    return this.rt.request(OPERATIONS["browser.result"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
}

/** ChatPanel Link — the person's phones and the partner servers they chose reach this gateway end-to-end encrypted (Noise) through a relay or the person's own tunnel, with no port open. Pairing, listing and removing devices is the owner's, at their own computer — token only, and never over Link itself. */
export class LinkApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** The Link route and every paired device — phones and partner servers — with what each may reach. No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries `kind: partner`, its `partner.name`, `scopes`, the `route` it was paired on and the `host` it connects to; a phone carries `kind: phone` and follows the gateway's route. Changing the route never moves a partner: one whose tunnel door shut with the route says `routeClosed`. — Requires the gateway token. Gateway 0.60.0+. */
  status(opts?: RequestOptions): Promise<T.LinkStatus> {
    return this.rt.request(OPERATIONS["link.status"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first. **A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`. **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. — Requires the gateway token. Gateway 0.60.0+. */
  pair(body: T.LinkPairRequest, opts?: RequestOptions): Promise<T.LinkPairResult> {
    return this.rt.request(OPERATIONS["link.pair"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel. Checked, saved in the gateway's config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which. — Requires the gateway token. Gateway 0.65.0+. */
  route(body: T.LinkRouteRequest, opts?: RequestOptions): Promise<T.LinkStatus> {
    return this.rt.request(OPERATIONS["link.route"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** Remove a paired device now — its relay room, its key and its open connection. — Requires the gateway token. Gateway 0.60.0+. */
  removeDevice(deviceId: string, opts?: RequestOptions): Promise<{
    ok: boolean;
  }> {
    return this.rt.request(OPERATIONS["link.removeDevice"], { path: { deviceId }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow. A partner granted `agents` (gateway 0.90.0+) runs them as the owner's own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. — Requires the gateway token. Gateway 0.91.0+. */
  approvals(opts?: RequestOptions): Promise<{
    pending: Array<T.LinkApproval>;
  }> {
    return this.rt.request(OPERATIONS["link.approvals"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
  /** The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect. — Requires the gateway token. Gateway 0.91.0+. */
  approvalsStream(opts?: RequestOptions): AsyncIterable<SseFrame<unknown>> {
    return this.rt.stream<unknown>(OPERATIONS["link.approvalsStream"], { path: {  }, query: undefined, headers: opts?.headers, opts });
  }
  /** The owner's answer — once, this action for the rest of the conversation, everything in it, or no. No answer within the agent's own wait (10 minutes) is a no; revoking the partner denies what it waits on. — Requires the gateway token. Gateway 0.91.0+. */
  answerApproval(approvalId: string, body: {
    decision: "allow" | "allow_action" | "allow_all" | "deny";
  }, opts?: RequestOptions): Promise<{
    ok: boolean;
  }> {
    return this.rt.request(OPERATIONS["link.answerApproval"], { path: { approvalId }, query: undefined, headers: opts?.headers, body: body, opts });
  }
  /** A partner's own folder, from its side — every file it may hold there, with size and last change. Called BY A PARTNER over Link (`createLinkFetch`), granted `files` (0.92.0+; needs `agents`). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (`data/`), skills (`.claude/skills/`, `.agents/skills/`), subagents (`.claude/agents/*.md`) and instructions (`CLAUDE.md`, `AGENTS.md`) — never what configures the agent. `GET /v1/link/files/data` lists one root. — Requires the gateway token. Gateway 0.92.0+. */
  listFiles(opts?: RequestOptions): Promise<{
    folder?: string;
    files: Array<T.LinkPartnerFile>;
  }> {
    return this.rt.request(OPERATIONS["link.listFiles"], { path: {  }, query: undefined, headers: opts?.headers, body: undefined, opts });
  }
}

/** The namespaces a client exposes, built on one runtime. */
export function buildApi(rt: Runtime) {
  return {
    gateway: new GatewayApi(rt),
    models: new ModelsApi(rt),
    chat: new ChatApi(rt),
    redaction: new RedactionApi(rt),
    history: new HistoryApi(rt),
    events: new EventsApi(rt),
    memory: new MemoryApi(rt),
    threads: new ThreadsApi(rt),
    prefs: new PrefsApi(rt),
    teams: new TeamsApi(rt),
    projects: new ProjectsApi(rt),
    agents: new AgentsApi(rt),
    capabilities: new CapabilitiesApi(rt),
    runtime: new RuntimeApi(rt),
    retrieval: new RetrievalApi(rt),
    engines: new EnginesApi(rt),
    skills: new SkillsApi(rt),
    a2a: new A2aApi(rt),
    fusions: new FusionsApi(rt),
    browser: new BrowserApi(rt),
    link: new LinkApi(rt),
  };
}
