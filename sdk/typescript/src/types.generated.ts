// GENERATED FROM openapi/chatpanel-gateway.yaml BY tools/gen-core.mjs — DO NOT EDIT. Edit the spec, run `npm run gen:core`.
/* eslint-disable */

/** A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. */
export interface AnyObject {
  [key: string]: unknown;
}

export interface ErrorResponse {
  error: string | {
    message: string;
    /** A stable machine word — `not_found`, `invalid_request`, `unavailable`, `auth`, `policy`, … */
    type?: string;
    /** A finer word when there is one — `agent_lane_token_required`, `org_policy`. */
    code?: string;
  };
}

export interface Health {
  ok: boolean;
  /** The gateway's semver; every version gate reads this. */
  version: string;
  backend?: string;
  /** Redaction tier. */
  tier?: "basic" | "full";
  /** Present from 0.9.0 — this gateway can pair a client. */
  pairing?: boolean;
  managed?: AnyObject;
  managedBy?: string;
  bridge?: AnyObject;
  stt?: AnyObject;
  tts?: AnyObject;
  [key: string]: unknown;
}

export interface WhoAmI {
  ok: boolean;
  trust: "token" | "pinned" | "unpaired" | "local" | "web";
  /** True when this caller may reach token-gated routes. */
  paired: boolean;
  version: string;
}

export interface PairingCode {
  ok: boolean;
  code: string;
  display?: string;
  /** ms since epoch */
  expiresAt: number;
}

export interface Paired {
  ok: boolean;
  /** The gateway token. A secret — store it 0600 or in the platform keychain; never log it. */
  token: string;
  /** The bridge's token when this machine has one. */
  bridgeToken?: string;
}

export interface Audit {
  version?: string;
  startedAt?: number;
  [key: string]: unknown;
}

export interface Model {
  id: string;
  object: "model";
  owned_by?: string;
  provider?: string;
  /** 0.6.64+ */
  provider_type?: "agent" | "openai" | "anthropic";
  api?: string;
  endpoints?: Array<string>;
  /** 0.6.64+ for bridge agents — whether the CLI is installed. */
  available?: boolean;
  /** 0.6.66+ — false when a turn is known to fail for something the user can fix. */
  configured?: boolean;
  reason?: string;
  /** False when the agent cannot take per-turn tools. */
  tools?: boolean;
  /** 0.40.0+ — where the model runs, which is what a privacy ceiling reads: `device` on this machine, `trusted` on the private network, `any` a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is `any`; OpenCode over Ollama is `device`), never where the CLI process runs. Every row is served on the gateway's loopback address, so the address says nothing — read this field. */
  reach?: "device" | "trusted" | "any";
  [key: string]: unknown;
}

export interface ModelList {
  object: "list";
  data: Array<Model>;
}

export interface ChatMessage {
  role: "system" | "user" | "assistant" | "tool";
  content?: string | Array<ChatContentPart> | null;
  name?: string;
  tool_calls?: Array<AnyObject>;
  tool_call_id?: string;
  [key: string]: unknown;
}

/** One part of a multi-part message — `text`, `image_url`, … in the OpenAI shape. */
export interface ChatContentPart {
  type: string;
  text?: string;
  image_url?: AnyObject;
  [key: string]: unknown;
}

export interface ChatCompletionRequest {
  /** A model id from `GET /v1/models`; `claude/opus` names an agent and its model. */
  model: string;
  messages: Array<ChatMessage>;
  stream?: boolean;
  stream_options?: AnyObject;
  tools?: Array<AnyObject>;
  tool_choice?: unknown;
  temperature?: number;
  max_tokens?: number;
  [key: string]: unknown;
}

export interface ChatCompletion {
  id: string;
  object: string;
  created?: number;
  model?: string;
  choices: Array<{
    index?: number;
    message?: ChatMessage;
    finish_reason?: string | null;
    [key: string]: unknown;
  }>;
  usage?: AnyObject;
  [key: string]: unknown;
}

/** One `data:` frame of a streamed completion. */
export interface ChatCompletionChunk {
  id: string;
  object: string;
  model?: string;
  choices: Array<{
    index?: number;
    delta?: AnyObject;
    finish_reason?: string | null;
    [key: string]: unknown;
  }>;
  usage?: AnyObject;
  [key: string]: unknown;
}

/** The runtime — Settings › Runtime's one document (docs/sandboxing.md S1). */
export interface RuntimeDocument {
  /** the bridge's /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows) */
  sandbox?: AnyObject;
  processes?: {
    /** every process running for the user — the bridge's (kind agent | warm | mcp | probe) and the gateway's own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1) */
    all?: Array<AnyObject>;
    /** id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env */
    localMcp?: Array<AnyObject>;
    warm?: AnyObject;
  };
  /** every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1) */
  containers?: Array<AnyObject>;
  /** { id, engine, host, at } newest first */
  refused?: Array<AnyObject>;
  bridge?: {
    ok?: boolean;
    version?: string;
  };
  /** podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note } */
  engines?: AnyObject;
  /** Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+). */
  services?: AnyObject;
  /** rerank and decide answered by the gateway itself, the default since gateway 0.57.0 (a container service above is the alternative): per capability { provider (embedded | container | remote | none — who serves it now), model (when embedded), models: [{ id, label, mb, languages, note }] (the curated list a person may pick; the first is the default), threads, state (idle | downloading | loading | ready | down), progress?, error? }. Pick one with POST /config capabilities.<id> { provider: 'embedded', model } or turn it off with { provider: 'none' }. */
  inProcess?: AnyObject;
}

export interface RuntimeActionResult {
  ok: boolean;
  error?: string;
  already?: boolean;
  url?: string;
  answering?: boolean;
  install?: AnyObject;
  /** The capabilities the service now stands behind (gateway 0.20+). */
  provides?: Array<string>;
  /** The model the container runs, on a start or a model pick (gateway 0.22+). */
  model?: string;
  /** A model pick re-created a running container. */
  restarted?: boolean;
  /** A model pick that fits but is tight for the engine's memory. */
  note?: string;
  plan?: RuntimePlan;
}

/** Whether a local model fits in memory (gateway 0.74+) — `GET /v1/runtime/plan`, and on a start the live-memory check refused. */
export interface RuntimePlan {
  ok: boolean;
  service?: string;
  model?: string;
  /** Weights + KV cache + 10% headroom. */
  needMB?: number;
  weightsMB?: number;
  /** The KV cache for the context; null when the model's config.json is not on disk. */
  kvMB?: number;
  context?: number;
  contextCounted?: boolean;
  source?: "heatwatch" | "total-memory";
  fits?: boolean;
  /** Heatwatch's answer; null without it. */
  live?: {
    fits?: boolean;
    needMB?: number;
    availableMB?: number;
    shortfallMB?: number;
    fitsGPULimit?: boolean;
    gpuWiredLimitMB?: number;
    /** The apps to close to make room. */
    close?: Array<string>;
  };
  /** One sentence for the person. */
  advice?: string;
}

export interface CapabilitiesDocument {
  capabilities: Array<Capability>;
  server: {
    name: string;
    version: string;
    /** Where this provider's egress audit is served. */
    audit?: string;
  };
}

export interface Capability {
  id: "detect" | "decide" | "rerank" | "embed" | "stt" | "tts" | "search" | "read";
  /** The standard route for this capability on this provider. */
  route: string;
  /** Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. */
  models?: Array<string>;
  /** Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. */
  providers?: Array<string>;
  /** One of `models`, or of `providers`. */
  default?: string;
  /** detect: the loaded model's label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. */
  labels?: Array<string>;
  /** detect: the tokenizer's limit; null when effectively unbounded. */
  maxTokens?: number | null;
  requirements?: AnyObject;
  stats?: CapabilityStats;
  /** state (off | loading | downloading | ready | error | external), name, dtype, error… */
  runtime?: AnyObject;
  /** stt: the session route for live dictation. */
  streaming?: string;
  /** tts: the voices route. */
  voices?: string;
}

export interface CapabilityStats {
  calls: number;
  p50Ms?: number;
  p95Ms?: number;
  maxMs?: number;
  lastMs?: number;
  charsPerSec?: number | null;
}

export interface DetectRequest {
  text: string;
  /** A model this provider lists; 404 otherwise. */
  model?: string;
  /** Keep only these of the model's labels. */
  labels?: Array<string>;
  /** Refused before running if the provider's record predicts it cannot be met. */
  budgetMs?: number;
  /** Return every span the provider finds, second-guessing none (redaction strictness 'strict'). A provider that does not filter ignores it. Since gateway 0.76.0. */
  strict?: boolean;
}

export interface DetectedEntity {
  value: string;
  /** The model's own label. */
  type: string;
  /** Character offset into the request text. */
  start: number;
  end: number;
  score: number;
}

export interface DetectResponse {
  entities: Array<DetectedEntity>;
  model: string;
  ms: number;
  runtime?: AnyObject;
}

export interface RerankRequest {
  query: string;
  documents: Array<string>;
  /** Return only the best this many. */
  top_n?: number;
  /** The model this provider serves; 404 otherwise. */
  model?: string;
  /** Refused before dialling if the gateway's record predicts it cannot be met. */
  budgetMs?: number;
}

export interface RerankResult {
  /** Into the request's documents. */
  index: number;
  relevance_score: number;
}

export interface RerankResponse {
  /** Distinct indexes, best first; at most top_n. */
  results: Array<RerankResult>;
  model: string;
  ms: number;
}

export interface DecideOption {
  value: string;
  /** What the option means — travels to the model as its criterion. */
  describe?: string;
}

export interface DecideQuestion {
  type: "choice" | "score" | "noul";
  instructions: string;
  /** choice: the values to pick from; score: the rubric, in order. A noul has none. */
  options?: Array<string | DecideOption>;
}

export interface DecideRequest {
  /** The text judged. */
  state: string;
  /** Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*). */
  questions: {
    [key: string]: DecideQuestion;
  };
  /** The model this provider serves; 404 otherwise. */
  model?: string;
  budgetMs?: number;
}

export interface DecideAnswerOption {
  /** A string (choice, score rubric entry) or a boolean (noul). */
  value: unknown;
  p: number;
}

export interface DecideAnswer {
  /** choice: the option picked; score: a number on the rubric; noul: a boolean. */
  value: unknown;
  /** The probability of `value` — read it as one only when the response says `calibrated`. */
  p: number;
  /** The whole distribution. */
  options: Array<DecideAnswerOption>;
  /** The provider's own confidence, when it reports one. */
  confidence?: number;
}

export interface DecideResponse {
  /** One per question asked, under the same key. */
  answers: {
    [key: string]: DecideAnswer;
  };
  model: string;
  ms: number;
  /** Whether `p` is a calibrated probability. false for a zero-shot NLI concentration. */
  calibrated?: boolean;
}

export interface WebSearchRequest {
  q: string;
  limit?: number;
  /** en or en-US; honoured by SearXNG. */
  lang?: string;
  /** A hostname — the site: operator. */
  site?: string;
  /** Honoured by SearXNG (time_range); week maps to month. */
  freshness?: "day" | "week" | "month" | "year";
  /** Read the top N results in this request. */
  read?: number;
  /** One of the providers `GET /v1/capabilities` lists for `search`; 404 otherwise. */
  provider?: string;
  budgetMs?: number;
}

export interface WebSearchResult {
  rank: number;
  url: string;
  title: string;
  snippet: string;
  /** The engine that produced it (SearXNG: the first of `engines`; serp: the engine asked — `duckduckgo`, `startpage`, `bing`, or `api:<id>` for a search API such as `api:exa`). Since gateway 0.79.0 every result carries it; the provider id when nothing finer is known. */
  engine?: string;
  /** The kind of door it came through: `gateway` · `searxng` · `api` (a search API) · `page` (a results page read) · `browser` (the person's own browser). A client meeting a value it does not know shows it as it is. Since gateway 0.79.0. */
  via?: string;
  /** SearXNG: every engine that returned it. */
  engines?: Array<string>;
  /** SearXNG's fused score. */
  score?: number;
  publishedDate?: string;
  /** Present for the top `read` results. */
  read?: ReadResponse;
}

export interface WebSearchResponse {
  results: Array<WebSearchResult>;
  /** SearXNG's direct answers, when it had any. */
  answers?: Array<string>;
  suggestions?: Array<string>;
  /** What was actually asked. */
  engines?: Array<string>;
  /** SearXNG engines that did not answer. */
  unresponsive?: Array<string>;
  /** Layer-1 redaction removed something from the query. */
  redacted?: boolean;
  /** The query as sent, when `redacted`. */
  query?: string;
  provider: string;
  ms: number;
  trail?: SearchTrail;
}

/** What the search did — each provider and engine asked, what it did, which are resting — and how it ended. Optional on every response that carries it; an older gateway sends none. Since gateway 0.79.0. */
export interface SearchTrail {
  /** How it ended: `answered` (results came back) · `nothing` (engines answered, none had anything) · `blocked` (every engine asked refused or timed out) · `resting` (nothing was asked: every engine is resting after earlier refusals) · `offline` (every engine failed at the network) · `no-engines`. A client meeting a value it does not know treats it as no results. */
  status: string;
  /** In the order asked: the provider tried first (`searxng`, or each engine and API `serp` asked), then the other provider when the first came back empty. */
  asked: Array<SearchTrailAsk>;
  /** Engines resting after refusing earlier, and until when. */
  resting: Array<SearchTrailResting>;
}

export interface SearchTrailAsk {
  /** The engine or provider asked — `searxng`, `serp`, `duckduckgo`, `startpage`, `bing`, `api:<id>`. */
  id: string;
  /** `answered` · `empty` (answered, found nothing) · `refused` (a refusing status, a timeout or no answer at all). */
  outcome: string;
  /** How many results it returned. */
  found?: number;
  /** The HTTP status of a refusal (429, 403, …), when there was one. */
  status?: number;
  /** It did not answer within its share of the budget. */
  timedOut?: boolean;
  /** It failed at the network — no status at all. */
  network?: boolean;
}

export interface SearchTrailResting {
  /** The resting engine. */
  id: string;
  /** When it may be asked again, ms since epoch. */
  until: number;
}

/** Either `name` + `data` (open a document) or `hash` + `page` (read one page of an open document). */
export interface ExtractRequest {
  /** The file name — its extension helps tell office formats apart. */
  name?: string;
  /** The client's guess at the type (e.g. `pdf`, `docx`); the bytes decide. */
  type?: string;
  /** The whole file, base64. At most 64 MB decoded. */
  data?: string;
  /** The `hash` an open call returned. */
  hash?: string;
  /** The page to read, 1-based. */
  page?: number;
  /** Refused before parsing if the worker's record predicts it cannot be met. */
  budgetMs?: number;
}

export interface ExtractResponse {
  /** SHA-256 of the bytes — the document's identity for page calls. */
  hash: string;
  /** What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html. */
  type: string;
  pages: number;
  /** The document's own title, when it declares one; else empty. */
  title?: string;
  /** A PDF with no text layer: its pages are empty and need OCR, which this does not do. */
  scanned?: boolean;
  /** Present on a page call. */
  page?: number;
  /** The page's text, on a page call. May be empty. */
  text?: string;
  /** `chatpanel-extract`. */
  provider: string;
  ms: number;
}

export interface ReadRequest {
  /** Absolute http(s) URL of a public page. */
  url: string;
  format?: "markdown" | "text";
  /** Cut at a section boundary near this length; `truncated` says so. */
  maxChars?: number;
  /** A search snippet to stand in for the content when the page cannot be read. */
  snippet?: string;
  /** One of the providers `GET /v1/capabilities` lists for `read`; 404 otherwise. */
  provider?: string;
  /** Refused before fetching if the provider's record predicts it cannot be met. */
  budgetMs?: number;
}

export interface ReadSection {
  /** The page's own heading id when it has one, else a slug — cite as `url#id`. */
  id: string;
  heading: string;
  level: number;
  /** Character offset of the heading line into the content. */
  offset: number;
}

export interface ReadRestriction {
  /** `robots` and `tdm` come only from a hosted (crawler) provider; on the user's machine the reader is a user agent. */
  reason: "login" | "paywall" | "rate_limited" | "robots" | "tdm";
  detail?: string;
}

export interface ReadResponse {
  /** Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped. */
  url: string;
  /** The URL that was asked for. */
  requested?: string;
  title: string;
  author?: string;
  /** As the page declared it (ISO date or datetime when it gave one). */
  published?: string;
  /** The hostname of `url`. */
  site?: string;
  lang?: string;
  format: "markdown" | "text";
  /** The content, when `format` is markdown. */
  markdown?: string;
  /** The content, when `format` is text. */
  text?: string;
  /** Length of the content field. */
  chars: number;
  truncated: boolean;
  sections: Array<ReadSection>;
  /** When the page was fetched (the cached copy's time on a cache hit). */
  fetched?: string;
  cached?: boolean;
  provider: string;
  ms: number;
  /** Set when the page was not read as the article; the content is then the request's `snippet`. */
  restricted?: ReadRestriction | null;
}

export interface RedactionPreview {
  /** What the model would receive. */
  text: string;
  count: number;
  sanitized?: number;
  tier?: "basic" | "full";
  /** Placeholder tokens and their types — never the real values. */
  entities?: Array<AnyObject>;
  detector?: AnyObject;
}

export type RecordType = "chat" | "note" | "meeting" | "brief";

export interface SearchFilters {
  type?: RecordType;
  /** ms since epoch */
  since?: number;
  /** ms since epoch */
  before?: number;
  limit?: number;
}

export type SearchRequest = (SearchFilters) & ({
  query: string;
  offset?: number;
});

export type SmartSearchRequest = (SearchFilters) & ({
  /** The natural-language question. */
  question: string;
  /** 2–4 keyword phrasings of your own; they lead. */
  queries?: Array<string>;
  maxQueries?: number;
});

/** How the question was framed — the typed plan the store was queried with. */
export interface ResearchPlan {
  intent?: "find" | "latest" | "earliest" | "count" | "group" | "people" | "list" | "detail";
  /** meeting, note, chat — or empty for every kind. */
  kind?: string;
  names?: Array<string>;
  terms?: Array<string>;
  sort?: "relevance" | "newest" | "oldest";
  limit?: number;
  since?: number;
  after?: number;
  before?: number;
  /** person, month, week, day — or empty. */
  group?: string;
  readFull?: boolean;
  followUp?: boolean;
  target?: string | null;
  [key: string]: unknown;
}

/** What a follow-up continues — the `next` of the previous answer, passed back as `previous`. */
export interface ResearchFollowUp {
  plan: ResearchPlan;
  /** The record the answer pointed at. */
  top?: string | null;
  /** What the answer said (a date in it bounds "even later"). */
  answer?: string;
}

export interface ResearchRequest {
  /** The person's question, in their words. */
  question: string;
  previous?: ResearchFollowUp;
  /** A model id to read with (condense long records, check the evidence). Needs the gateway token; without one the parts are quoted as they are. */
  model?: string;
  /** A record that is not evidence — the conversation asking. */
  excludeId?: string;
}

export interface ResearchResponse {
  ok: boolean;
  question?: string;
  plan: ResearchPlan;
  /** How the store was searched, in words. */
  how: string;
  framedBy?: "rules" | "model";
  /** Every match in the store, not the rows returned. */
  count?: number | null;
  rows: Array<{
    id: string;
    kind?: string;
    title?: string;
    date?: number;
    snippet?: string;
    [key: string]: unknown;
  }>;
  groups?: Array<{
    key: string;
    count: number;
  }> | null;
  read: Array<{
    id: string;
    title?: string;
    date?: number;
    parts?: number;
    of?: number;
    speakers?: Array<{
      name?: string;
      lines?: number;
    }>;
    notes?: Array<string>;
  }>;
  memory?: Array<string>;
  rounds?: number;
  verdict?: string | null;
  ms?: number;
  next: ResearchFollowUp;
  /** The block to hand a model — null when nothing was found anywhere. */
  attachment?: {
    title: string;
    text: string;
  } | null;
  size?: number;
  newest?: number | null;
}

export interface SearchHit {
  id: string;
  score?: number;
  title?: string;
  type?: RecordType;
  date?: number;
  snippet?: string;
  [key: string]: unknown;
}

export interface SearchResponse {
  ok: boolean;
  size?: number;
  newest?: number;
  results: Array<SearchHit>;
}

export type SmartSearchResponse = (SearchResponse) & ({
  queries?: Array<string>;
});

export interface HistoryStatus {
  ok: boolean;
  size: number;
  newest?: number;
  bytes?: number;
  lossless?: {
    records?: number;
    newest?: number;
  } | null;
}

export interface HistoryItem {
  id: string;
  title?: string;
  type?: RecordType;
  date?: number;
  chars?: number;
  [key: string]: unknown;
}

export interface HistoryPage {
  ok: boolean;
  total: number;
  items: Array<HistoryItem>;
}

export interface HistoryRecord {
  id: string;
  title?: string;
  type?: RecordType;
  date?: number;
  text: string;
  [key: string]: unknown;
}

export interface RecordsPage {
  ok: boolean;
  /** Whole records; a tombstone carries `deletedAt`. */
  records: Array<AnyObject>;
  /** The cursor for the next page — pass it as `cursor` (or, paging by revision, as `after_rev`); absent on the last page. */
  next?: string;
  size?: number;
  newest?: number;
  /** The newest revision (gateway 0.63.0+). Each record carries its own `rev` too. */
  rev?: number;
  [key: string]: unknown;
}

/** One durable event in the CloudEvents 1.0 envelope. `seq`, `host`, `chatpanelv` are ChatPanel's extension attributes (the per-host order, the producer, the log schema version); `causes` is the comma-joined ids this event follows; `data` is the payload — refs and counts, never content. */
export interface CloudEvent {
  specversion: "1.0";
  id: string;
  /** `urn:chatpanel:host:<host>` */
  source: string;
  /** `net.chatpanel.<family>.<kind>` */
  type: string;
  time: string;
  datacontenttype?: string;
  seq: number;
  host: string;
  causes?: string;
  chatpanelv: number;
  data?: AnyObject;
  [key: string]: unknown;
}

/** `{ host: seq }` — the highest seq held per host. */
export interface EventsCursorMap {
  [key: string]: number;
}

export interface PushEventsRequest {
  events: Array<CloudEvent>;
}

export interface PushEventsResponse {
  ok: boolean;
  appended: number;
  /** Events already held — a retry's share. */
  duplicates: number;
  rejected: Array<{
    id?: string | null;
    /** `CLOUDEVENT` (envelope), `SEQ` (moved backwards), or event.js's `SHAPE` / `TYPE` / `PAYLOAD` / `VERSION`. */
    code: string;
    message: string;
  }>;
  cursor: EventsCursorMap;
}

export interface EventsCursor {
  ok: boolean;
  cursor: EventsCursorMap;
  count?: number;
}

export interface EventsPage {
  ok: boolean;
  events: Array<CloudEvent>;
  /** Pass back as `cursor` for the next page. */
  cursor: EventsCursorMap;
  more: boolean;
}

export interface EventsStats {
  ok: boolean;
  stats: {
    events?: number;
    bytes?: number;
    avgBytes?: number;
    span?: {
      [key: string]: unknown;
    };
    perDay?: {
      [key: string]: unknown;
    };
    hosts?: {
      [key: string]: unknown;
    };
    types?: {
      [key: string]: number;
    };
    turns?: {
      [key: string]: unknown;
    };
    /** `total`, `distinct`, `dedupHitRate` (percent). */
    refs?: {
      [key: string]: unknown;
    };
    toolCalls?: {
      [key: string]: unknown;
    };
    [key: string]: unknown;
  };
  /** `eventsPerYear`, `bytesPerYear`, `daysToCap` at the observed rate; null before there is a span. */
  year?: {
    [key: string]: unknown;
  } | null;
}

export interface EventsStreamEvent {
  /** The SSE event name. */
  event: "hello" | "cloudevent";
  cursor?: EventsCursorMap;
  count?: number;
  version?: string;
}

export interface PutRecordsRequest {
  /** Who is pushing — recorded on every record. */
  host?: string;
  at?: number;
  /** Whole records or tombstones. A record with `baseRev` (gateway 0.63.0+) is written only while the stored one is at that revision (0 = none stored); otherwise it comes back in `conflicts`. Without it the newer stamp wins. */
  records?: Array<AnyObject>;
  /** Sealed backup entries, opened with the stored passphrase. */
  entries?: Array<AnyObject>;
  /** Gateway 0.64.0+: a NOTE sent with a `baseRev` that is no longer current is merged against that version (title, tags and text three-way) instead of coming back in `conflicts`; the result is in `merged`. */
  merge?: boolean;
}

export interface PutRecordsResponse {
  ok: boolean;
  written: number;
  ids?: Array<string>;
  sealed?: number;
  size?: number;
  /** Each written record's new revision (gateway 0.63.0+). */
  revs?: {
    [key: string]: number;
  };
  /** The current record for each one sent with a `baseRev` that is no longer current — merge and send again. */
  conflicts?: Array<AnyObject>;
  /** Gateway 0.64.0+, with `merge: true`: each note merged from an outdated copy, as stored (with its new `rev`) — replace yours with it. */
  merged?: Array<AnyObject>;
  /** The newest revision after this write. */
  rev?: number;
}

export interface IngestRequest {
  upserts?: Array<{
    id: string;
    title?: string;
    type?: RecordType;
    date?: number;
    text: string;
    [key: string]: unknown;
  }>;
  removes?: Array<string>;
}

export interface Memory {
  id: string;
  text: string;
  kind?: string;
  scope?: string;
  tags?: Array<string>;
  createdAt?: number;
  updatedAt?: number;
  source?: MemorySource;
  [key: string]: unknown;
}

/** Who proposed the memory. There is no confirm dialog on a CLI, so attribution is the accountability. */
export interface MemorySource {
  /** The client — e.g. `sdk`, `cli`, `mcp`. */
  via?: string;
  surface?: string;
  agent?: string;
  ref?: string;
}

export interface MemoryList {
  ok: boolean;
  size?: number;
  memories: Array<Memory>;
}

export interface RecallRequest {
  text: string;
  scopes?: Array<string>;
  limit?: number;
  maxChars?: number;
}

export interface RecallResponse {
  ok: boolean;
  size?: number;
  memories: Array<Memory>;
  /** A prompt block carrying the recalled memories. */
  block?: string;
  [key: string]: unknown;
}

export interface RememberRequest {
  /** One short sentence. */
  text: string;
  kind?: string;
  scope?: string;
  tags?: Array<string>;
  source?: MemorySource;
}

export interface RememberResponse {
  ok: boolean;
  action: string;
  record: Memory;
  replaced?: Memory | null;
  size?: number;
}

export interface MemorySyncResponse {
  ok: boolean;
  size?: number;
  memories: Array<Memory>;
  [key: string]: unknown;
}

export interface HistoryStreamEvent {
  /** The SSE event name. */
  event: "hello" | "records";
  newest?: number;
  size?: number;
  version?: string;
  ids?: Array<string>;
  at?: number;
}

export interface TeamsStreamEvent {
  type: "hello" | "run";
  /** On `hello`. */
  at?: number;
  /** The run that changed. */
  id?: string;
  /** True when the run left the store. */
  removed?: boolean;
}

export interface PrefsEvent {
  type: "hello" | "changed";
  revision?: number;
  stamps?: {
    [key: string]: number;
  };
  /** The sections the other client wrote. */
  applied?: Array<string>;
  by?: string;
  [key: string]: unknown;
}

export interface PrefSection {
  value: unknown;
  updatedAt?: number;
  by?: string;
}

export interface Prefs {
  ok: boolean;
  revision: number;
  sections?: {
    [key: string]: PrefSection;
  };
  stamps?: {
    [key: string]: number;
  };
}

export interface PrefsWrite {
  sections: {
    [key: string]: PrefSection;
  };
  /** Which client is writing. */
  by?: string;
}

export interface PrefsWriteResult {
  ok: boolean;
  revision: number;
  applied?: Array<string>;
  kept?: Array<string>;
  [key: string]: unknown;
}

export interface RunEvent {
  seq?: number;
  type: string;
  at?: number;
  payload?: AnyObject;
  [key: string]: unknown;
}

export interface TeamRun {
  id: string;
  client?: string;
  team?: AnyObject;
  status?: string;
  events?: Array<RunEvent>;
  [key: string]: unknown;
}

export interface TeamRunCreate {
  id?: string;
  /** Which client is running it. */
  client?: string;
  team?: AnyObject;
  request?: AnyObject;
}

export interface Project {
  id: string;
  status?: string;
  jobs?: Array<AnyObject>;
  [key: string]: unknown;
}

export interface QuarantinedSkill {
  id?: string;
  path?: string;
  source?: string;
  verdict?: "suspicious" | "dangerous";
  [key: string]: unknown;
}

/** An A2A Agent Card (protocol 1.0). Unknown fields are preserved, so a card from a later spec round-trips. */
export interface AgentCard {
  name: string;
  description: string;
  version: string;
  supportedInterfaces?: Array<{
    url?: string;
    /** JSONRPC, GRPC, HTTP+JSON — an open string, so an unknown binding is carried. */
    protocolBinding?: string;
    protocolVersion?: string;
    /** Echoed on every request to this interface when set. */
    tenant?: string;
  }>;
  provider?: {
    organization?: string;
    url?: string;
  };
  capabilities?: {
    streaming?: boolean;
    pushNotifications?: boolean;
    extendedAgentCard?: boolean;
    [key: string]: unknown;
  };
  defaultInputModes?: Array<string>;
  defaultOutputModes?: Array<string>;
  skills?: Array<{
    [key: string]: unknown;
  }>;
  iconUrl?: string;
  documentationUrl?: string;
  [key: string]: unknown;
}

/** Either `url` or `card` identifies the agent; either `text` or `message` is what to say. */
export interface A2ASendRequest {
  url?: string;
  card?: AgentCard;
  /** Shorthand for a one-part text message. */
  text?: string;
  /** A full A2A Message. */
  message?: {
    [key: string]: unknown;
  };
  /** Groups related interactions. */
  contextId?: string;
  /** Continues an existing task — how an input or auth stop is answered. */
  taskId?: string;
  /** Do not wait for a terminal or interrupted state. */
  returnImmediately?: boolean;
  auth?: string;
}

/** The reply, plus the two facts every caller derives — done, and what a person must do. */
export interface A2AResult {
  ok?: boolean;
  /** A2A returns one or the other; an agent answering at once creates no task. */
  kind?: "task" | "message";
  task?: {
    [key: string]: unknown;
  };
  message?: {
    [key: string]: unknown;
  };
  /** The answer as text — artifacts first, then what the agent actually said. */
  text?: string;
  done?: boolean;
  /** `answer` for TASK_STATE_INPUT_REQUIRED, `approval` for TASK_STATE_AUTH_REQUIRED, null otherwise. */
  needs?: "answer" | "approval";
}

/** An agent definition, read from whichever tool's dialect wrote it. */
export interface AgentDef {
  id: string;
  name?: string;
  purpose?: string;
  dialect?: "chatpanel" | "claude" | "codex" | "a2a";
  /** The folder it was read from: chatpanel, claude, codex, agents-dir, external. */
  source?: string;
  label?: string;
  /** Relative to the root it was found in. */
  path?: string;
  writable?: boolean;
  engine?: {
    [key: string]: unknown;
  };
  grants?: Array<string>;
  skills?: Array<string>;
  promptChars?: number;
  /** Only on `GET /agent-defs/{agentId}`. */
  prompt?: string;
  /** What the dialect could not map — an unmapped tool is reported, never widened into a grant. */
  warnings?: Array<string>;
  scanned?: {
    [key: string]: unknown;
  };
  [key: string]: unknown;
}

export interface AgentExportRequest {
  agent: AgentDef;
  /** The dialect to write. */
  to: "claude" | "codex" | "chatpanel";
  /** Only ever after a plan reported `theirs` and a person agreed. */
  overwrite?: boolean;
}

export interface AgentExportPlan {
  to?: string;
  label?: string;
  /** The exact file that would be written. */
  path?: string;
  /** Its rendered contents. */
  text?: string;
  exists?: boolean;
  /** `theirs` means ChatPanel did not write it, or it has been edited since. */
  status?: "new" | "ours" | "theirs";
  fidelity?: AgentFidelity;
}

/** What survives a trip into a dialect, derived from what that dialect declares it can express. */
export interface AgentFidelity {
  dialect?: string;
  lossless?: boolean;
  carried?: Array<string>;
  dropped?: Array<{
    field?: string;
    why?: string;
  }>;
}

export interface Skill {
  id: string;
  name?: string;
  description?: string;
  promptChars?: number;
  /** Only on `GET /skills/{skillId}`. */
  prompt?: string;
  [key: string]: unknown;
}

export interface Transcription {
  text: string;
  /** verbose_json only */
  task?: "transcribe";
  /** verbose_json only */
  language?: string;
  /** Seconds of audio; verbose_json only. */
  duration?: number;
  /** Who transcribed; verbose_json only. */
  provider?: "embedded" | "remote" | "container";
  took_ms?: number;
  /** verbose_json only. */
  segments?: Array<{
    id: number;
    start: number;
    end: number;
    text: string;
    /** With diarize=true. */
    speaker?: string;
  }>;
}

export interface FusionList {
  kinds: {
    [key: string]: {
      id?: string;
      label?: string;
      gain?: "recall" | "speed" | "reliability";
      what?: string;
      for?: Array<string>;
    };
  };
  fusions: Array<{
    id: string;
    kind: "union" | "draft" | "fallback";
    capability: string;
    label?: string;
    members: Array<string | {
      id: string;
      role?: "target" | "draft";
    }>;
    /** Read from the gateway’s state, not composed. */
    derived?: boolean;
    /** For a derived one: ner, or the runtime service. */
    source?: string;
    running?: boolean;
    /** The fusion in a sentence. */
    describe?: string;
  }>;
}

export interface BrowserInfo {
  kind: "chrome" | "edge" | "firefox" | "brave" | "opera" | "chromium" | "other";
  version?: string;
}

export interface LinkPairRequest {
  /** Absent is a phone. */
  kind?: "phone" | "partner";
  /** A phone pairing — what the phone calls this computer. */
  name?: string;
  partner?: {
    /** What the owner calls the partner. */
    name: string;
  };
  /** What the partner may reach: `models` (GET /v1/models), `chat` (POST /v1/chat/completions and /v1/messages to API models), `agents` (also the coding agents, as the owner's own turn runs them — the Coding Agents settings, the sandbox and the org policy decide what they may do, in the partner's own folder, and the owner answers their approval prompts; needs chat; 0.90.0+), `files` (its data, skills, subagents and instructions in that folder — /v1/link/files; needs agents; 0.92.0+). An array or a comma list; absent is models and chat. */
  scopes?: Array<"models" | "chat" | "agents" | "files"> | string;
  /** The partner's one path. Absent is the gateway's own route. */
  route?: "link" | "relay" | "tailscale" | "cloudflare";
  /** The https relay for `route relay`. */
  relay?: string;
  /** Where the partner's agents work (with `agents`, 0.90.0+): an absolute path or ~/…; absent is ~/.chatpanel/partners/<name>. Never the disk or the home folder. */
  folder?: string;
  /** The owner saw the preview and said yes. Without it nothing is issued. */
  confirm?: boolean;
}

export interface LinkPartnerPreview {
  partner: string;
  scopes: Array<string>;
  agents: boolean;
  route: string;
  /** The one host the partner's server will connect to. */
  host: string;
  /** Where its agents will work (with agents). */
  folder?: string;
  /** The confirmation as the owner reads it. */
  lines: Array<string>;
}

export interface LinkPairResult {
  /** A phone's QR text. */
  uri?: string;
  /** The QR as SVG. */
  svg?: string;
  /** Epoch ms when the code stops working. */
  expiresAt?: number;
  /** The device id it pairs. */
  room?: string;
  /** Partner pairings — false is a preview only. */
  confirmed?: boolean;
  preview?: LinkPartnerPreview;
  /** A partner's one-time `cplink1.` code — give it to the partner through a channel you trust. */
  code?: string;
  kind?: string;
  partner?: {
    name?: string;
  };
  scopes?: Array<string>;
  route?: string;
  host?: string;
}

export interface LinkRouteRequest {
  route: "link" | "relay" | "tailscale" | "cloudflare";
  /** The relay (relay) or this computer's tunnel address (tailscale */
  url?: string;
  /** A tunnel route keeps ChatPanel Link as the phones' fallback unless false. */
  fallback?: boolean;
}

export interface LinkApproval {
  id: string;
  /** The partner whose agent asks. */
  partner: string;
  device?: string;
  /** The partner's conversation (`partner.<device>.<thread>`), or the turn's own. */
  conversation?: string;
  /** Who asks and what kind of action — "Atlas’s agent asks — run a command?" */
  title: string;
  /** The command */
  body: string;
  tool?: string;
  createdAt: number;
  /** When it becomes a no. */
  expiresAt: number;
}

export interface LinkPartnerFile {
  /** Relative to the partner's folder. */
  path: string;
  size: number;
  modifiedAt?: number;
}

export interface LinkDevice {
  id: string;
  kind?: "phone" | "partner";
  name: string;
  pairedAt?: number | null;
  lastSeen?: number | null;
  online?: boolean;
  /** tunnel or relay, while online. */
  via?: string | null;
  partner?: {
    name?: string;
  };
  scopes?: Array<string>;
  /** A partner's route */
  route?: string | null;
  host?: string;
  /** A tunnel partner whose door shut when the gateway's route moved — pair it again to move it. */
  routeClosed?: boolean;
  /** Where a partner's agents work (0.90.0+, with agents). */
  folder?: string;
  staleRelay?: string;
  tunnelNeedsRelink?: boolean;
}

export interface LinkStatus {
  enabled: boolean;
  route?: string;
  relay?: string | null;
  tunnel?: string | null;
  problem?: string;
  routes?: Array<{
    [key: string]: unknown;
  }>;
  setup?: {
    [key: string]: unknown;
  };
  devices: Array<LinkDevice>;
  /** A phone code waiting to be scanned. */
  pairing?: {
    [key: string]: unknown;
  } | null;
  /** A partner code waiting to be used. */
  partnerPairing?: {
    [key: string]: unknown;
  } | null;
  agentSessions?: boolean;
}

export interface BrowserStatus {
  connected: boolean;
  /** Calls waiting on the browser. */
  pending: number;
  /** A browser holds the stream but has not announced yet. */
  waiting?: boolean;
  browser?: BrowserInfo;
  /** The extension's version. */
  extension?: string;
  /** The page tool: { name, description, parameters } — hand it to a model as it is. */
  spec?: {
    [key: string]: unknown;
  };
  /** The guidance that goes with the tool. */
  system?: string;
  /** The full specs behind the dispatcher (gateway 0.59.1+) — a hub lists each action with its own arguments. */
  actions?: Array<{
    [key: string]: unknown;
  }>;
}

export interface BrowserCall {
  /** A page action: open_tab, navigate, read_page, inspect_page, fill_form, click_by_text, screenshot, describe… */
  action: string;
  args?: {
    [key: string]: unknown;
  };
  /** What the person asked for — shown to them when the browser asks to be used. */
  task?: string;
  timeoutMs?: number;
}

export interface BrowserCallResult {
  ok: boolean;
  /** The page action's result — its text, or text with a screenshot. */
  result: string | {
    text: string;
    /** A data URL. */
    image?: string;
  };
}

export interface BrowserStreamEvent {
  event: "hello" | "call" | "cancel" | "replaced";
  /** On `hello`. */
  session?: string;
  /** On `hello` — the gateway's. */
  version?: string;
  /** On `call` and `cancel`. */
  id?: string;
  action?: string;
  args?: {
    [key: string]: unknown;
  };
  task?: string;
}

export interface BrowserAnnounce {
  session: string;
  browser?: BrowserInfo;
  extension?: string;
  spec: {
    [key: string]: unknown;
  };
  system?: string;
  /** Optional — the full specs behind the dispatcher. */
  actions?: Array<{
    [key: string]: unknown;
  }>;
}

export interface BrowserResult {
  session: string;
  id: string;
  result: string | {
    text: string;
    image?: string;
  };
}

