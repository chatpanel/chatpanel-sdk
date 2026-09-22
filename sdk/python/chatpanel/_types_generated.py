# GENERATED FROM openapi/chatpanel-gateway.yaml BY tools/gen-core.mjs — DO NOT EDIT. Edit the spec, run `npm run gen:core`.
from typing import Any, Dict, List, Literal, NotRequired, TypedDict, Union

AnyObject = Dict[str, Any]
"""A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is."""

class ErrorResponse(TypedDict, total=False):
    """ErrorResponse"""
    error: Union[str, Dict[str, Any]]


class Health(TypedDict, total=False):
    """Health"""
    ok: bool
    version: str  # The gateway's semver; every version gate reads this.
    backend: NotRequired[str]
    tier: NotRequired[Literal["basic", "full"]]  # Redaction tier.
    pairing: NotRequired[bool]  # Present from 0.9.0 — this gateway can pair a client.
    managed: NotRequired["AnyObject"]
    managedBy: NotRequired[str]
    bridge: NotRequired["AnyObject"]
    stt: NotRequired["AnyObject"]
    tts: NotRequired["AnyObject"]


class WhoAmI(TypedDict, total=False):
    """WhoAmI"""
    ok: bool
    trust: Literal["token", "pinned", "unpaired", "local", "web"]
    paired: bool  # True when this caller may reach token-gated routes.
    version: str


class PairingCode(TypedDict, total=False):
    """PairingCode"""
    ok: bool
    code: str
    display: NotRequired[str]
    expiresAt: int  # ms since epoch


class Paired(TypedDict, total=False):
    """Paired"""
    ok: bool
    token: str  # The gateway token. A secret — store it 0600 or in the platform keychain; never log it.
    bridgeToken: NotRequired[str]  # The bridge's token when this machine has one.


class Audit(TypedDict, total=False):
    """Audit"""
    version: NotRequired[str]
    startedAt: NotRequired[int]


class Model(TypedDict, total=False):
    """Model"""
    id: str
    object: Literal["model"]
    owned_by: NotRequired[str]
    provider: NotRequired[str]
    provider_type: NotRequired[Literal["agent", "openai", "anthropic"]]  # 0.6.64+
    api: NotRequired[str]
    endpoints: NotRequired[List[str]]
    available: NotRequired[bool]  # 0.6.64+ for bridge agents — whether the CLI is installed.
    configured: NotRequired[bool]  # 0.6.66+ — false when a turn is known to fail for something the user can fix.
    reason: NotRequired[str]
    tools: NotRequired[bool]  # False when the agent cannot take per-turn tools.
    reach: NotRequired[Literal["device", "trusted", "any"]]  # 0.40.0+ — where the model runs, which is what a privacy ceiling reads: `device` on this machine, `trusted` on the private network, `any` a cloud. For a coding agent it is where its MODEL is (Codex → OpenAI is `any`; OpenCode over Ollama is `device`), never where the CLI process runs. Every row is served on the gateway's loopback address, so the address says nothing — read this field.


class ModelList(TypedDict, total=False):
    """ModelList"""
    object: Literal["list"]
    data: List["Model"]


class ChatMessage(TypedDict, total=False):
    """ChatMessage"""
    role: Literal["system", "user", "assistant", "tool"]
    content: NotRequired[Union[str, List["ChatContentPart"], None]]
    name: NotRequired[str]
    tool_calls: NotRequired[List["AnyObject"]]
    tool_call_id: NotRequired[str]


class ChatContentPart(TypedDict, total=False):
    """One part of a multi-part message — `text`, `image_url`, … in the OpenAI shape."""
    type: str
    text: NotRequired[str]
    image_url: NotRequired["AnyObject"]


class ChatCompletionRequest(TypedDict, total=False):
    """ChatCompletionRequest"""
    model: str  # A model id from `GET /v1/models`; `claude/opus` names an agent and its model.
    messages: List["ChatMessage"]
    stream: NotRequired[bool]
    stream_options: NotRequired["AnyObject"]
    tools: NotRequired[List["AnyObject"]]
    tool_choice: NotRequired[Any]
    temperature: NotRequired[float]
    max_tokens: NotRequired[int]


class ChatCompletion(TypedDict, total=False):
    """ChatCompletion"""
    id: str
    object: str
    created: NotRequired[int]
    model: NotRequired[str]
    choices: List[Dict[str, Any]]
    usage: NotRequired["AnyObject"]


class ChatCompletionChunk(TypedDict, total=False):
    """One `data:` frame of a streamed completion."""
    id: str
    object: str
    model: NotRequired[str]
    choices: List[Dict[str, Any]]
    usage: NotRequired["AnyObject"]


class RuntimeDocument(TypedDict, total=False):
    """The runtime — Settings › Runtime's one document (docs/sandboxing.md S1)."""
    sandbox: NotRequired["AnyObject"]  # the bridge's /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows)
    processes: NotRequired[Dict[str, Any]]
    containers: NotRequired[List["AnyObject"]]  # every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1)
    refused: NotRequired[List["AnyObject"]]  # { id, engine, host, at } newest first
    bridge: NotRequired[Dict[str, Any]]
    engines: NotRequired["AnyObject"]  # podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note }
    services: NotRequired["AnyObject"]  # Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+).


class RuntimeActionResult(TypedDict, total=False):
    """RuntimeActionResult"""
    ok: bool
    error: NotRequired[str]
    already: NotRequired[bool]
    url: NotRequired[str]
    answering: NotRequired[bool]
    install: NotRequired["AnyObject"]
    provides: NotRequired[List[str]]  # The capabilities the service now stands behind (gateway 0.20+).
    model: NotRequired[str]  # The model the container runs, on a start or a model pick (gateway 0.22+).
    restarted: NotRequired[bool]  # A model pick re-created a running container.
    note: NotRequired[str]  # A model pick that fits but is tight for the engine's memory.


class CapabilitiesDocument(TypedDict, total=False):
    """CapabilitiesDocument"""
    capabilities: List["Capability"]
    server: Dict[str, Any]


class Capability(TypedDict, total=False):
    """Capability"""
    id: Literal["detect", "decide", "rerank", "embed", "stt", "tts", "search", "read"]
    route: str  # The standard route for this capability on this provider.
    models: NotRequired[List[str]]  # Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those.
    providers: NotRequired[List[str]]  # Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those.
    default: NotRequired[str]  # One of `models`, or of `providers`.
    labels: NotRequired[List[str]]  # detect: the loaded model's label vocabulary, BIOES prefixes stripped. Empty until a model is loaded.
    maxTokens: NotRequired[Union[int, None]]  # detect: the tokenizer's limit; null when effectively unbounded.
    requirements: NotRequired["AnyObject"]
    stats: NotRequired["CapabilityStats"]
    runtime: NotRequired["AnyObject"]  # state (off | loading | downloading | ready | error | external), name, dtype, error…
    streaming: NotRequired[str]  # stt: the session route for live dictation.
    voices: NotRequired[str]  # tts: the voices route.


class CapabilityStats(TypedDict, total=False):
    """CapabilityStats"""
    calls: int
    p50Ms: NotRequired[float]
    p95Ms: NotRequired[float]
    maxMs: NotRequired[float]
    lastMs: NotRequired[float]
    charsPerSec: NotRequired[Union[float, None]]


class DetectRequest(TypedDict, total=False):
    """DetectRequest"""
    text: str
    model: NotRequired[str]  # A model this provider lists; 404 otherwise.
    labels: NotRequired[List[str]]  # Keep only these of the model's labels.
    budgetMs: NotRequired[float]  # Refused before running if the provider's record predicts it cannot be met.


class DetectedEntity(TypedDict, total=False):
    """DetectedEntity"""
    value: str
    type: str  # The model's own label.
    start: int  # Character offset into the request text.
    end: int
    score: float


class DetectResponse(TypedDict, total=False):
    """DetectResponse"""
    entities: List["DetectedEntity"]
    model: str
    ms: float
    runtime: NotRequired["AnyObject"]


class RerankRequest(TypedDict, total=False):
    """RerankRequest"""
    query: str
    documents: List[str]
    top_n: NotRequired[int]  # Return only the best this many.
    model: NotRequired[str]  # The model this provider serves; 404 otherwise.
    budgetMs: NotRequired[float]  # Refused before dialling if the gateway's record predicts it cannot be met.


class RerankResult(TypedDict, total=False):
    """RerankResult"""
    index: int  # Into the request's documents.
    relevance_score: float


class RerankResponse(TypedDict, total=False):
    """RerankResponse"""
    results: List["RerankResult"]  # Distinct indexes, best first; at most top_n.
    model: str
    ms: float


class DecideOption(TypedDict, total=False):
    """DecideOption"""
    value: str
    describe: NotRequired[str]  # What the option means — travels to the model as its criterion.


class DecideQuestion(TypedDict, total=False):
    """DecideQuestion"""
    type: Literal["choice", "score", "noul"]
    instructions: str
    options: NotRequired[List[Union[str, "DecideOption"]]]  # choice: the values to pick from; score: the rubric, in order. A noul has none.


class DecideRequest(TypedDict, total=False):
    """DecideRequest"""
    state: str  # The text judged.
    questions: Dict[str, "DecideQuestion"]  # Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*).
    model: NotRequired[str]  # The model this provider serves; 404 otherwise.
    budgetMs: NotRequired[float]


class DecideAnswerOption(TypedDict, total=False):
    """DecideAnswerOption"""
    value: Any  # A string (choice, score rubric entry) or a boolean (noul).
    p: float


class DecideAnswer(TypedDict, total=False):
    """DecideAnswer"""
    value: Any  # choice: the option picked; score: a number on the rubric; noul: a boolean.
    p: float  # The probability of `value` — read it as one only when the response says `calibrated`.
    options: List["DecideAnswerOption"]  # The whole distribution.
    confidence: NotRequired[float]  # The provider's own confidence, when it reports one.


class DecideResponse(TypedDict, total=False):
    """DecideResponse"""
    answers: Dict[str, "DecideAnswer"]  # One per question asked, under the same key.
    model: str
    ms: float
    calibrated: NotRequired[bool]  # Whether `p` is a calibrated probability. false for a zero-shot NLI concentration.


class WebSearchRequest(TypedDict, total=False):
    """WebSearchRequest"""
    q: str
    limit: NotRequired[int]
    lang: NotRequired[str]  # en or en-US; honoured by SearXNG.
    site: NotRequired[str]  # A hostname — the site: operator.
    freshness: NotRequired[Literal["day", "week", "month", "year"]]  # Honoured by SearXNG (time_range); week maps to month.
    read: NotRequired[int]  # Read the top N results in this request.
    provider: NotRequired[str]  # One of the providers `GET /v1/capabilities` lists for `search`; 404 otherwise.
    budgetMs: NotRequired[float]


class WebSearchResult(TypedDict, total=False):
    """WebSearchResult"""
    rank: int
    url: str
    title: str
    snippet: str
    engine: NotRequired[str]  # The engine that produced it (SearXNG: the first of `engines`; serp: the results page asked).
    engines: NotRequired[List[str]]  # SearXNG: every engine that returned it.
    score: NotRequired[float]  # SearXNG's fused score.
    publishedDate: NotRequired[str]
    read: NotRequired["ReadResponse"]  # Present for the top `read` results.


class WebSearchResponse(TypedDict, total=False):
    """WebSearchResponse"""
    results: List["WebSearchResult"]
    answers: NotRequired[List[str]]  # SearXNG's direct answers, when it had any.
    suggestions: NotRequired[List[str]]
    engines: NotRequired[List[str]]  # What was actually asked.
    unresponsive: NotRequired[List[str]]  # SearXNG engines that did not answer.
    redacted: NotRequired[bool]  # Layer-1 redaction removed something from the query.
    query: NotRequired[str]  # The query as sent, when `redacted`.
    provider: str
    ms: float


class ExtractRequest(TypedDict, total=False):
    """Either `name` + `data` (open a document) or `hash` + `page` (read one page of an open document)."""
    name: NotRequired[str]  # The file name — its extension helps tell office formats apart.
    type: NotRequired[str]  # The client's guess at the type (e.g. `pdf`, `docx`); the bytes decide.
    data: NotRequired[str]  # The whole file, base64. At most 64 MB decoded.
    hash: NotRequired[str]  # The `hash` an open call returned.
    page: NotRequired[int]  # The page to read, 1-based.
    budgetMs: NotRequired[float]  # Refused before parsing if the worker's record predicts it cannot be met.


class ExtractResponse(TypedDict, total=False):
    """ExtractResponse"""
    hash: str  # SHA-256 of the bytes — the document's identity for page calls.
    type: str  # What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html.
    pages: int
    title: NotRequired[str]  # The document's own title, when it declares one; else empty.
    scanned: NotRequired[bool]  # A PDF with no text layer: its pages are empty and need OCR, which this does not do.
    page: NotRequired[int]  # Present on a page call.
    text: NotRequired[str]  # The page's text, on a page call. May be empty.
    provider: str  # `chatpanel-extract`.
    ms: float


class ReadRequest(TypedDict, total=False):
    """ReadRequest"""
    url: str  # Absolute http(s) URL of a public page.
    format: NotRequired[Literal["markdown", "text"]]
    maxChars: NotRequired[int]  # Cut at a section boundary near this length; `truncated` says so.
    snippet: NotRequired[str]  # A search snippet to stand in for the content when the page cannot be read.
    provider: NotRequired[str]  # One of the providers `GET /v1/capabilities` lists for `read`; 404 otherwise.
    budgetMs: NotRequired[float]  # Refused before fetching if the provider's record predicts it cannot be met.


class ReadSection(TypedDict, total=False):
    """ReadSection"""
    id: str  # The page's own heading id when it has one, else a slug — cite as `url#id`.
    heading: str
    level: int
    offset: int  # Character offset of the heading line into the content.


class ReadRestriction(TypedDict, total=False):
    """ReadRestriction"""
    reason: Literal["login", "paywall", "rate_limited", "robots", "tdm"]  # `robots` and `tdm` come only from a hosted (crawler) provider; on the user's machine the reader is a user agent.
    detail: NotRequired[str]


class ReadResponse(TypedDict, total=False):
    """ReadResponse"""
    url: str  # Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped.
    requested: NotRequired[str]  # The URL that was asked for.
    title: str
    author: NotRequired[str]
    published: NotRequired[str]  # As the page declared it (ISO date or datetime when it gave one).
    site: NotRequired[str]  # The hostname of `url`.
    lang: NotRequired[str]
    format: Literal["markdown", "text"]
    markdown: NotRequired[str]  # The content, when `format` is markdown.
    text: NotRequired[str]  # The content, when `format` is text.
    chars: int  # Length of the content field.
    truncated: bool
    sections: List["ReadSection"]
    fetched: NotRequired[str]  # When the page was fetched (the cached copy's time on a cache hit).
    cached: NotRequired[bool]
    provider: str
    ms: float
    restricted: NotRequired[Union["ReadRestriction", None]]  # Set when the page was not read as the article; the content is then the request's `snippet`.


class RedactionPreview(TypedDict, total=False):
    """RedactionPreview"""
    text: str  # What the model would receive.
    count: int
    sanitized: NotRequired[int]
    tier: NotRequired[Literal["basic", "full"]]
    entities: NotRequired[List["AnyObject"]]  # Placeholder tokens and their types — never the real values.
    detector: NotRequired["AnyObject"]


RecordType = Literal["chat", "note", "meeting", "brief"]

class SearchFilters(TypedDict, total=False):
    """SearchFilters"""
    type: NotRequired["RecordType"]
    since: NotRequired[int]  # ms since epoch
    before: NotRequired[int]  # ms since epoch
    limit: NotRequired[int]


SearchRequest = Dict[str, Any]

SmartSearchRequest = Dict[str, Any]

class SearchHit(TypedDict, total=False):
    """SearchHit"""
    id: str
    score: NotRequired[float]
    title: NotRequired[str]
    type: NotRequired["RecordType"]
    date: NotRequired[int]
    snippet: NotRequired[str]


class SearchResponse(TypedDict, total=False):
    """SearchResponse"""
    ok: bool
    size: NotRequired[int]
    newest: NotRequired[int]
    results: List["SearchHit"]


SmartSearchResponse = Dict[str, Any]

class HistoryStatus(TypedDict, total=False):
    """HistoryStatus"""
    ok: bool
    size: int
    newest: NotRequired[int]
    bytes: NotRequired[int]
    lossless: NotRequired[Union[Dict[str, Any], None]]


class HistoryItem(TypedDict, total=False):
    """HistoryItem"""
    id: str
    title: NotRequired[str]
    type: NotRequired["RecordType"]
    date: NotRequired[int]
    chars: NotRequired[int]


class HistoryPage(TypedDict, total=False):
    """HistoryPage"""
    ok: bool
    total: int
    items: List["HistoryItem"]


class HistoryRecord(TypedDict, total=False):
    """HistoryRecord"""
    id: str
    title: NotRequired[str]
    type: NotRequired["RecordType"]
    date: NotRequired[int]
    text: str


class RecordsPage(TypedDict, total=False):
    """RecordsPage"""
    ok: bool
    records: List["AnyObject"]  # Whole records; a tombstone carries `deletedAt`.
    next: NotRequired[str]  # The cursor for the next page — pass it as `cursor`; absent on the last page.
    size: NotRequired[int]
    newest: NotRequired[int]


class CloudEvent(TypedDict, total=False):
    """One durable event in the CloudEvents 1.0 envelope. `seq`, `host`, `chatpanelv` are ChatPanel's extension attributes (the per-host order, the producer, the log schema version); `causes` is the comma-joined ids this event follows; `data` is the payload — refs and counts, never content."""
    specversion: Literal["1.0"]
    id: str
    source: str  # `urn:chatpanel:host:<host>`
    type: str  # `net.chatpanel.<family>.<kind>`
    time: str
    datacontenttype: NotRequired[str]
    seq: int
    host: str
    causes: NotRequired[str]
    chatpanelv: int
    data: NotRequired["AnyObject"]


EventsCursorMap = Dict[str, int]
"""`{ host: seq }` — the highest seq held per host."""

class PushEventsRequest(TypedDict, total=False):
    """PushEventsRequest"""
    events: List["CloudEvent"]


class PushEventsResponse(TypedDict, total=False):
    """PushEventsResponse"""
    ok: bool
    appended: int
    duplicates: int  # Events already held — a retry's share.
    rejected: List[Dict[str, Any]]
    cursor: "EventsCursorMap"


class EventsCursor(TypedDict, total=False):
    """EventsCursor"""
    ok: bool
    cursor: "EventsCursorMap"
    count: NotRequired[int]


class EventsPage(TypedDict, total=False):
    """EventsPage"""
    ok: bool
    events: List["CloudEvent"]
    cursor: "EventsCursorMap"  # Pass back as `cursor` for the next page.
    more: bool


class EventsStats(TypedDict, total=False):
    """EventsStats"""
    ok: bool
    stats: Dict[str, Any]
    year: NotRequired[Union[Dict[str, Any], None]]  # `eventsPerYear`, `bytesPerYear`, `daysToCap` at the observed rate; null before there is a span.


class EventsStreamEvent(TypedDict, total=False):
    """EventsStreamEvent"""
    event: Literal["hello", "cloudevent"]  # The SSE event name.
    cursor: NotRequired["EventsCursorMap"]
    count: NotRequired[int]
    version: NotRequired[str]


class PutRecordsRequest(TypedDict, total=False):
    """PutRecordsRequest"""
    host: NotRequired[str]  # Who is pushing — recorded on every record.
    at: NotRequired[int]
    records: NotRequired[List["AnyObject"]]
    entries: NotRequired[List["AnyObject"]]  # Sealed backup entries, opened with the stored passphrase.


class PutRecordsResponse(TypedDict, total=False):
    """PutRecordsResponse"""
    ok: bool
    written: int
    ids: NotRequired[List[str]]
    sealed: NotRequired[int]
    size: NotRequired[int]


class IngestRequest(TypedDict, total=False):
    """IngestRequest"""
    upserts: NotRequired[List[Dict[str, Any]]]
    removes: NotRequired[List[str]]


class Memory(TypedDict, total=False):
    """Memory"""
    id: str
    text: str
    kind: NotRequired[str]
    scope: NotRequired[str]
    tags: NotRequired[List[str]]
    createdAt: NotRequired[int]
    updatedAt: NotRequired[int]
    source: NotRequired["MemorySource"]


class MemorySource(TypedDict, total=False):
    """Who proposed the memory. There is no confirm dialog on a CLI, so attribution is the accountability."""
    via: NotRequired[str]  # The client — e.g. `sdk`, `cli`, `mcp`.
    surface: NotRequired[str]
    agent: NotRequired[str]
    ref: NotRequired[str]


class MemoryList(TypedDict, total=False):
    """MemoryList"""
    ok: bool
    size: NotRequired[int]
    memories: List["Memory"]


class RecallRequest(TypedDict, total=False):
    """RecallRequest"""
    text: str
    scopes: NotRequired[List[str]]
    limit: NotRequired[int]
    maxChars: NotRequired[int]


class RecallResponse(TypedDict, total=False):
    """RecallResponse"""
    ok: bool
    size: NotRequired[int]
    memories: List["Memory"]
    block: NotRequired[str]  # A prompt block carrying the recalled memories.


class RememberRequest(TypedDict, total=False):
    """RememberRequest"""
    text: str  # One short sentence.
    kind: NotRequired[str]
    scope: NotRequired[str]
    tags: NotRequired[List[str]]
    source: NotRequired["MemorySource"]


class RememberResponse(TypedDict, total=False):
    """RememberResponse"""
    ok: bool
    action: str
    record: "Memory"
    replaced: NotRequired[Union["Memory", None]]
    size: NotRequired[int]


class MemorySyncResponse(TypedDict, total=False):
    """MemorySyncResponse"""
    ok: bool
    size: NotRequired[int]
    memories: List["Memory"]


class HistoryStreamEvent(TypedDict, total=False):
    """HistoryStreamEvent"""
    event: Literal["hello", "records"]  # The SSE event name.
    newest: NotRequired[int]
    size: NotRequired[int]
    version: NotRequired[str]
    ids: NotRequired[List[str]]
    at: NotRequired[int]


class PrefsEvent(TypedDict, total=False):
    """PrefsEvent"""
    type: Literal["hello", "changed"]
    revision: NotRequired[int]
    stamps: NotRequired[Dict[str, int]]
    applied: NotRequired[List[str]]  # The sections the other client wrote.
    by: NotRequired[str]


class PrefSection(TypedDict, total=False):
    """PrefSection"""
    value: Any
    updatedAt: NotRequired[int]
    by: NotRequired[str]


class Prefs(TypedDict, total=False):
    """Prefs"""
    ok: bool
    revision: int
    sections: NotRequired[Dict[str, "PrefSection"]]
    stamps: NotRequired[Dict[str, int]]


class PrefsWrite(TypedDict, total=False):
    """PrefsWrite"""
    sections: Dict[str, "PrefSection"]
    by: NotRequired[str]  # Which client is writing.


class PrefsWriteResult(TypedDict, total=False):
    """PrefsWriteResult"""
    ok: bool
    revision: int
    applied: NotRequired[List[str]]
    kept: NotRequired[List[str]]


class RunEvent(TypedDict, total=False):
    """RunEvent"""
    seq: NotRequired[int]
    type: str
    at: NotRequired[int]
    payload: NotRequired["AnyObject"]


class TeamRun(TypedDict, total=False):
    """TeamRun"""
    id: str
    client: NotRequired[str]
    team: NotRequired["AnyObject"]
    status: NotRequired[str]
    events: NotRequired[List["RunEvent"]]


class TeamRunCreate(TypedDict, total=False):
    """TeamRunCreate"""
    id: NotRequired[str]
    client: NotRequired[str]  # Which client is running it.
    team: NotRequired["AnyObject"]
    request: NotRequired["AnyObject"]


class Project(TypedDict, total=False):
    """Project"""
    id: str
    status: NotRequired[str]
    jobs: NotRequired[List["AnyObject"]]


class Skill(TypedDict, total=False):
    """Skill"""
    id: str
    name: NotRequired[str]
    description: NotRequired[str]
    promptChars: NotRequired[int]
    prompt: NotRequired[str]  # Only on `GET /skills/{skillId}`.


class Transcription(TypedDict, total=False):
    """Transcription"""
    text: str
    task: NotRequired[Literal["transcribe"]]  # verbose_json only
    language: NotRequired[str]  # verbose_json only
    duration: NotRequired[float]  # Seconds of audio; verbose_json only.
    provider: NotRequired[Literal["embedded", "remote", "container"]]  # Who transcribed; verbose_json only.
    took_ms: NotRequired[int]
    segments: NotRequired[List[Dict[str, Any]]]  # verbose_json only.


class FusionList(TypedDict, total=False):
    """FusionList"""
    kinds: Dict[str, Dict[str, Any]]
    fusions: List[Dict[str, Any]]


