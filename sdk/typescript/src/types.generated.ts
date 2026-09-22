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
  /** The engine that produced it (SearXNG: the first of `engines`; serp: the results page asked). */
  engine?: string;
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
  /** The cursor for the next page — pass it as `cursor`; absent on the last page. */
  next?: string;
  size?: number;
  newest?: number;
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
  records?: Array<AnyObject>;
  /** Sealed backup entries, opened with the stored passphrase. */
  entries?: Array<AnyObject>;
}

export interface PutRecordsResponse {
  ok: boolean;
  written: number;
  ids?: Array<string>;
  sealed?: number;
  size?: number;
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

