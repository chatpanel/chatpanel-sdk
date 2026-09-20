// GENERATED FROM openapi/chatpanel-gateway.yaml BY tools/gen-core.mjs — DO NOT EDIT. Edit the spec, run `npm run gen:core`.
/* eslint-disable */

/** A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. */
export interface AnyObject {
  [key: string]: unknown;
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

