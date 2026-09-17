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


