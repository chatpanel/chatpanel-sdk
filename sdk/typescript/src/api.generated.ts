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
  "retrieval.extract": { id: "retrieval.extract", method: "POST", path: "/v1/extract", auth: "open", since: "0.16.0", stream: null, pathParams: [], queryParams: [] },
  "history.search": { id: "history.search", method: "POST", path: "/v1/history/search", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "history.smartSearch": { id: "history.smartSearch", method: "POST", path: "/v1/history/smart-search", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "history.related": { id: "history.related", method: "GET", path: "/v1/history/related", auth: "open", since: null, stream: null, pathParams: [], queryParams: ["id","limit"] },
  "history.status": { id: "history.status", method: "GET", path: "/v1/history/status", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "history.list": { id: "history.list", method: "GET", path: "/v1/history/list", auth: "open", since: null, stream: null, pathParams: [], queryParams: ["limit","offset","type"] },
  "history.get": { id: "history.get", method: "GET", path: "/v1/history/get", auth: "open", since: null, stream: null, pathParams: [], queryParams: ["id","maxChars","offset"] },
  "history.records": { id: "history.records", method: "GET", path: "/v1/history/records", auth: "open", since: "0.10.0", stream: null, pathParams: [], queryParams: ["since","cursor","limit","kind"] },
  "history.putRecords": { id: "history.putRecords", method: "PUT", path: "/v1/history/records", auth: "token", since: "0.10.0", stream: null, pathParams: [], queryParams: [] },
  "history.stream": { id: "history.stream", method: "GET", path: "/v1/history/stream", auth: "open", since: "0.11.0", stream: "sse", pathParams: [], queryParams: [] },
  "history.ingest": { id: "history.ingest", method: "POST", path: "/v1/history/ingest", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.list": { id: "memory.list", method: "GET", path: "/v1/memory/list", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.recall": { id: "memory.recall", method: "POST", path: "/v1/memory/recall", auth: "open", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.remember": { id: "memory.remember", method: "POST", path: "/v1/memory/remember", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.forget": { id: "memory.forget", method: "POST", path: "/v1/memory/forget", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "memory.sync": { id: "memory.sync", method: "POST", path: "/v1/memory/sync", auth: "token", since: null, stream: null, pathParams: [], queryParams: [] },
  "prefs.get": { id: "prefs.get", method: "GET", path: "/v1/prefs", auth: "open", since: "0.6.77", stream: null, pathParams: [], queryParams: ["section","stamps"] },
  "prefs.put": { id: "prefs.put", method: "POST", path: "/v1/prefs", auth: "open", since: "0.6.77", stream: null, pathParams: [], queryParams: [] },
  "prefs.delete": { id: "prefs.delete", method: "DELETE", path: "/v1/prefs", auth: "open", since: "0.6.77", stream: null, pathParams: [], queryParams: ["section"] },
  "prefs.events": { id: "prefs.events", method: "GET", path: "/v1/prefs/events", auth: "open", since: "0.6.77", stream: "sse", pathParams: [], queryParams: [] },
  "teams.listRuns": { id: "teams.listRuns", method: "GET", path: "/v1/teams/runs", auth: "open", since: "0.6.78", stream: null, pathParams: [], queryParams: ["limit","team"] },
  "teams.createRun": { id: "teams.createRun", method: "POST", path: "/v1/teams/runs", auth: "open", since: "0.6.78", stream: null, pathParams: [], queryParams: [] },
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
  "engines.list": { id: "engines.list", method: "GET", path: "/v1/engines", auth: "open", since: "0.6.89", stream: null, pathParams: [], queryParams: ["minCalls"] },
  "engines.card": { id: "engines.card", method: "GET", path: "/v1/engines/{engineKey}/card", auth: "open", since: "0.6.89", stream: null, pathParams: ["engineKey"], queryParams: ["entries","minCalls"] },
  "engines.appendEntry": { id: "engines.appendEntry", method: "POST", path: "/v1/engines/{engineKey}/entries", auth: "open", since: "0.6.89", stream: null, pathParams: ["engineKey"], queryParams: [] },
  "skills.list": { id: "skills.list", method: "GET", path: "/skills", auth: "open", since: "0.6.64", stream: null, pathParams: [], queryParams: ["workdir"] },
  "skills.get": { id: "skills.get", method: "GET", path: "/skills/{skillId}", auth: "open", since: "0.6.67", stream: null, pathParams: ["skillId"], queryParams: ["workdir"] },
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
  /** One chat turn through the gateway (OpenAI-compatible). Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (`codex`, `claude`, `opencode`, … — `provider_type: agent` in `GET /v1/models`) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** `{ type: 'auth', code: 'agent_lane_token_required' }`. The SDKs surface that as `ForbiddenError` with `status` 401. */
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

/** What the model reads on demand — a document attached by reference, parsed into pages on this machine (`extract`); web search and page reading join it as they ship. */
export class RetrievalApi {
  private readonly rt: Runtime;
  constructor(rt: Runtime) { this.rt = rt; }
  /** A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash. The `extract` capability (docs/capability-endpoints.md): the third leg beside `search` and `read`. Two calls on one route. With `name` and `data` (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (`hash`, SHA-256 of the bytes), its `type` as read from the bytes, its `title` when it has one and how many `pages` it has; the text stays on the server. With `hash` and `page`, one page's text comes back; the bytes crossed once. A page is the format's own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is `scanned: true` with empty pages, never OCR'd), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 `unknown_document`: send the bytes again. `budgetMs` is refused (503 `over_budget`) from the worker's own record. — Gateway 0.16.0+. */
  extract(body: T.ExtractRequest, opts?: RequestOptions): Promise<T.ExtractResponse> {
    return this.rt.request(OPERATIONS["retrieval.extract"], { path: {  }, query: undefined, headers: opts?.headers, body: body, opts });
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
  records(query?: { since?: number; cursor?: string; limit?: number; kind?: string }, opts?: RequestOptions): Promise<T.RecordsPage> {
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

/** The namespaces a client exposes, built on one runtime. */
export function buildApi(rt: Runtime) {
  return {
    gateway: new GatewayApi(rt),
    models: new ModelsApi(rt),
    chat: new ChatApi(rt),
    redaction: new RedactionApi(rt),
    retrieval: new RetrievalApi(rt),
    history: new HistoryApi(rt),
    memory: new MemoryApi(rt),
    prefs: new PrefsApi(rt),
    teams: new TeamsApi(rt),
    projects: new ProjectsApi(rt),
    agents: new AgentsApi(rt),
    engines: new EnginesApi(rt),
    skills: new SkillsApi(rt),
  };
}
