# GENERATED FROM openapi/chatpanel-gateway.yaml BY tools/gen-core.mjs — DO NOT EDIT. Edit the spec, run `npm run gen:core`.
from typing import Any, Dict, Iterator, Optional

from . import _types_generated as T
from ._runtime import Operation, Runtime, SseFrame

OPERATIONS: Dict[str, Operation] = {
    "gateway.health": Operation(id="gateway.health", method="GET", path="/health", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "gateway.whoami": Operation(id="gateway.whoami", method="POST", path="/whoami", auth="open", since="0.9.0", stream=None, path_params=(), query_params=()),
    "gateway.pairCode": Operation(id="gateway.pairCode", method="POST", path="/pair/code", auth="token", since="0.9.0", stream=None, path_params=(), query_params=()),
    "gateway.pair": Operation(id="gateway.pair", method="POST", path="/pair", auth="open", since="0.9.0", stream=None, path_params=(), query_params=()),
    "gateway.audit": Operation(id="gateway.audit", method="GET", path="/audit", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "models.list": Operation(id="models.list", method="GET", path="/v1/models", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "chat.completions": Operation(id="chat.completions", method="POST", path="/v1/chat/completions", auth="open", since=None, stream="sse-when-stream", path_params=(), query_params=()),
    "redaction.preview": Operation(id="redaction.preview", method="POST", path="/redact", auth="open", since="0.6.62", stream=None, path_params=(), query_params=()),
    "history.search": Operation(id="history.search", method="POST", path="/v1/history/search", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "history.smartSearch": Operation(id="history.smartSearch", method="POST", path="/v1/history/smart-search", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "history.related": Operation(id="history.related", method="GET", path="/v1/history/related", auth="open", since=None, stream=None, path_params=(), query_params=("id", "limit",)),
    "history.status": Operation(id="history.status", method="GET", path="/v1/history/status", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "history.list": Operation(id="history.list", method="GET", path="/v1/history/list", auth="open", since=None, stream=None, path_params=(), query_params=("limit", "offset", "type",)),
    "history.get": Operation(id="history.get", method="GET", path="/v1/history/get", auth="open", since=None, stream=None, path_params=(), query_params=("id", "maxChars", "offset",)),
    "history.records": Operation(id="history.records", method="GET", path="/v1/history/records", auth="open", since="0.10.0", stream=None, path_params=(), query_params=("since", "cursor", "limit", "kind",)),
    "history.putRecords": Operation(id="history.putRecords", method="PUT", path="/v1/history/records", auth="token", since="0.10.0", stream=None, path_params=(), query_params=()),
    "history.stream": Operation(id="history.stream", method="GET", path="/v1/history/stream", auth="open", since="0.11.0", stream="sse", path_params=(), query_params=()),
    "events.since": Operation(id="events.since", method="GET", path="/v1/events", auth="token", since="0.24.0", stream=None, path_params=(), query_params=("cursor", "limit", "host",)),
    "events.push": Operation(id="events.push", method="POST", path="/v1/events", auth="token", since="0.24.0", stream=None, path_params=(), query_params=()),
    "events.cursor": Operation(id="events.cursor", method="GET", path="/v1/events/cursor", auth="token", since="0.24.0", stream=None, path_params=(), query_params=()),
    "events.stats": Operation(id="events.stats", method="GET", path="/v1/events/stats", auth="token", since="0.25.1", stream=None, path_params=(), query_params=()),
    "events.stream": Operation(id="events.stream", method="GET", path="/v1/events/stream", auth="token", since="0.24.0", stream="sse", path_params=(), query_params=("cursor",)),
    "history.ingest": Operation(id="history.ingest", method="POST", path="/v1/history/ingest", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "memory.list": Operation(id="memory.list", method="GET", path="/v1/memory/list", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "memory.recall": Operation(id="memory.recall", method="POST", path="/v1/memory/recall", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "memory.remember": Operation(id="memory.remember", method="POST", path="/v1/memory/remember", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "memory.forget": Operation(id="memory.forget", method="POST", path="/v1/memory/forget", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "memory.sync": Operation(id="memory.sync", method="POST", path="/v1/memory/sync", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "prefs.get": Operation(id="prefs.get", method="GET", path="/v1/prefs", auth="open", since="0.6.77", stream=None, path_params=(), query_params=("section", "stamps",)),
    "prefs.put": Operation(id="prefs.put", method="POST", path="/v1/prefs", auth="open", since="0.6.77", stream=None, path_params=(), query_params=()),
    "prefs.delete": Operation(id="prefs.delete", method="DELETE", path="/v1/prefs", auth="open", since="0.6.77", stream=None, path_params=(), query_params=("section",)),
    "prefs.events": Operation(id="prefs.events", method="GET", path="/v1/prefs/events", auth="open", since="0.6.77", stream="sse", path_params=(), query_params=()),
    "teams.listRuns": Operation(id="teams.listRuns", method="GET", path="/v1/teams/runs", auth="open", since="0.6.78", stream=None, path_params=(), query_params=("limit", "team",)),
    "teams.createRun": Operation(id="teams.createRun", method="POST", path="/v1/teams/runs", auth="open", since="0.6.78", stream=None, path_params=(), query_params=()),
    "teams.getRun": Operation(id="teams.getRun", method="GET", path="/v1/teams/runs/{runId}", auth="open", since="0.6.78", stream=None, path_params=("runId",), query_params=("events",)),
    "teams.deleteRun": Operation(id="teams.deleteRun", method="DELETE", path="/v1/teams/runs/{runId}", auth="open", since="0.6.110", stream=None, path_params=("runId",), query_params=()),
    "teams.runEvents": Operation(id="teams.runEvents", method="GET", path="/v1/teams/runs/{runId}/events", auth="open", since="0.6.78", stream="sse", path_params=("runId",), query_params=("after",)),
    "teams.appendRunEvents": Operation(id="teams.appendRunEvents", method="POST", path="/v1/teams/runs/{runId}/events", auth="open", since="0.6.78", stream=None, path_params=("runId",), query_params=()),
    "teams.stopRun": Operation(id="teams.stopRun", method="POST", path="/v1/teams/runs/{runId}/stop", auth="open", since="0.6.78", stream=None, path_params=("runId",), query_params=()),
    "teams.answer": Operation(id="teams.answer", method="POST", path="/v1/teams/runs/{runId}/answer", auth="open", since="0.6.81", stream=None, path_params=("runId",), query_params=()),
    "teams.decide": Operation(id="teams.decide", method="POST", path="/v1/teams/runs/{runId}/decide", auth="open", since="0.6.81", stream=None, path_params=("runId",), query_params=()),
    "teams.post": Operation(id="teams.post", method="POST", path="/v1/teams/runs/{runId}/post", auth="open", since="0.6.81", stream=None, path_params=("runId",), query_params=()),
    "teams.removeThread": Operation(id="teams.removeThread", method="DELETE", path="/v1/teams/runs/{runId}/threads/{threadId}", auth="open", since="0.6.106", stream=None, path_params=("runId", "threadId",), query_params=()),
    "teams.handoff": Operation(id="teams.handoff", method="POST", path="/v1/teams/runs/{runId}/handoff", auth="open", since="0.6.85", stream=None, path_params=("runId",), query_params=()),
    "teams.checkpoint": Operation(id="teams.checkpoint", method="GET", path="/v1/teams/runs/{runId}/checkpoint", auth="open", since="0.6.85", stream=None, path_params=("runId",), query_params=()),
    "teams.claim": Operation(id="teams.claim", method="POST", path="/v1/teams/runs/{runId}/claim", auth="open", since="0.6.85", stream=None, path_params=("runId",), query_params=()),
    "projects.list": Operation(id="projects.list", method="GET", path="/v1/projects", auth="open", since="0.6.90", stream=None, path_params=(), query_params=("limit", "status",)),
    "projects.create": Operation(id="projects.create", method="POST", path="/v1/projects", auth="open", since="0.6.90", stream=None, path_params=(), query_params=()),
    "projects.jobBoard": Operation(id="projects.jobBoard", method="GET", path="/v1/projects/jobs", auth="open", since="0.6.90", stream=None, path_params=(), query_params=()),
    "projects.get": Operation(id="projects.get", method="GET", path="/v1/projects/{projectId}", auth="open", since="0.6.90", stream=None, path_params=("projectId",), query_params=("events",)),
    "projects.delete": Operation(id="projects.delete", method="DELETE", path="/v1/projects/{projectId}", auth="open", since="0.6.90", stream=None, path_params=("projectId",), query_params=()),
    "projects.events": Operation(id="projects.events", method="GET", path="/v1/projects/{projectId}/events", auth="open", since="0.6.90", stream="sse", path_params=("projectId",), query_params=("after",)),
    "projects.appendEvents": Operation(id="projects.appendEvents", method="POST", path="/v1/projects/{projectId}/events", auth="open", since="0.6.90", stream=None, path_params=("projectId",), query_params=()),
    "projects.postJob": Operation(id="projects.postJob", method="POST", path="/v1/projects/{projectId}/jobs", auth="open", since="0.6.90", stream=None, path_params=("projectId",), query_params=()),
    "projects.patchJob": Operation(id="projects.patchJob", method="POST", path="/v1/projects/{projectId}/jobs/{jobId}", auth="open", since="0.6.90", stream=None, path_params=("projectId", "jobId",), query_params=()),
    "projects.applications": Operation(id="projects.applications", method="GET", path="/v1/projects/{projectId}/jobs/{jobId}/applications", auth="open", since="0.6.90", stream=None, path_params=("projectId", "jobId",), query_params=("reach", "chatModel",)),
    "projects.recruit": Operation(id="projects.recruit", method="POST", path="/v1/projects/{projectId}/jobs/{jobId}/recruit", auth="open", since="0.6.90", stream=None, path_params=("projectId", "jobId",), query_params=()),
    "agents.scorecards": Operation(id="agents.scorecards", method="GET", path="/v1/agents/scorecards", auth="open", since="0.6.87", stream=None, path_params=(), query_params=()),
    "agents.scorecard": Operation(id="agents.scorecard", method="GET", path="/v1/agents/{agentId}/scorecard", auth="open", since="0.6.87", stream=None, path_params=("agentId",), query_params=()),
    "agents.rate": Operation(id="agents.rate", method="POST", path="/v1/agents/{agentId}/scorecard", auth="open", since="0.6.87", stream=None, path_params=("agentId",), query_params=()),
    "capabilities.list": Operation(id="capabilities.list", method="GET", path="/v1/capabilities", auth="open", since="0.13.0", stream=None, path_params=(), query_params=()),
    "runtime.status": Operation(id="runtime.status", method="GET", path="/v1/runtime", auth="open", since="0.19.0", stream=None, path_params=(), query_params=()),
    "runtime.engine": Operation(id="runtime.engine", method="POST", path="/v1/runtime/engines/{name}", auth="token", since="0.19.0", stream=None, path_params=("name",), query_params=()),
    "runtime.service": Operation(id="runtime.service", method="POST", path="/v1/runtime/services/{id}", auth="token", since="0.19.0", stream=None, path_params=("id",), query_params=()),
    "capabilities.detect": Operation(id="capabilities.detect", method="POST", path="/v1/detect", auth="open", since="0.13.0", stream=None, path_params=(), query_params=()),
    "capabilities.rerank": Operation(id="capabilities.rerank", method="POST", path="/v1/rerank", auth="open", since="0.20.0", stream=None, path_params=(), query_params=()),
    "capabilities.decide": Operation(id="capabilities.decide", method="POST", path="/v1/decide", auth="open", since="0.20.0", stream=None, path_params=(), query_params=()),
    "retrieval.search": Operation(id="retrieval.search", method="POST", path="/v1/search", auth="open", since="0.15.0", stream=None, path_params=(), query_params=()),
    "retrieval.searchAlias": Operation(id="retrieval.searchAlias", method="GET", path="/v1/search/{q}", auth="open", since="0.15.0", stream=None, path_params=("q",), query_params=("read",)),
    "retrieval.extract": Operation(id="retrieval.extract", method="POST", path="/v1/extract", auth="open", since="0.16.0", stream=None, path_params=(), query_params=()),
    "retrieval.read": Operation(id="retrieval.read", method="POST", path="/v1/read", auth="open", since="0.14.0", stream=None, path_params=(), query_params=()),
    "retrieval.readAlias": Operation(id="retrieval.readAlias", method="GET", path="/v1/read/{url}", auth="open", since="0.14.0", stream=None, path_params=("url",), query_params=()),
    "engines.list": Operation(id="engines.list", method="GET", path="/v1/engines", auth="open", since="0.6.89", stream=None, path_params=(), query_params=("minCalls",)),
    "engines.card": Operation(id="engines.card", method="GET", path="/v1/engines/{engineKey}/card", auth="open", since="0.6.89", stream=None, path_params=("engineKey",), query_params=("entries", "minCalls",)),
    "engines.appendEntry": Operation(id="engines.appendEntry", method="POST", path="/v1/engines/{engineKey}/entries", auth="open", since="0.6.89", stream=None, path_params=("engineKey",), query_params=()),
    "skills.list": Operation(id="skills.list", method="GET", path="/skills", auth="open", since="0.6.64", stream=None, path_params=(), query_params=("workdir",)),
    "skills.get": Operation(id="skills.get", method="GET", path="/skills/{skillId}", auth="open", since="0.6.67", stream=None, path_params=("skillId",), query_params=("workdir",)),
    "fusions.list": Operation(id="fusions.list", method="GET", path="/v1/fusions", auth="open", since="0.33.0", stream=None, path_params=(), query_params=()),
}
"""Every operation in the contract, keyed by operationId — the route table the runtime executes."""

class GatewayApi:
    """Liveness, identity and pairing."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def health(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.Health":
        """Liveness, version and capabilities. Additive fields only. `version` is what every version gate reads."""
        return self._rt.request(OPERATIONS["gateway.health"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def whoami(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.WhoAmI":
        """What the gateway makes of this caller. — Gateway 0.9.0+."""
        return self._rt.request(OPERATIONS["gateway.whoami"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def pair_code(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.PairingCode":
        """Mint a one-time pairing code (5 minutes, one use, 5 attempts). Only a caller that already holds the token may mint one — pairing widens nothing. — Requires the gateway token. Gateway 0.9.0+."""
        return self._rt.request(OPERATIONS["gateway.pairCode"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def pair(self, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.Paired":
        """Exchange a pairing code for the gateway token. — Gateway 0.9.0+."""
        return self._rt.request(OPERATIONS["gateway.pair"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def audit(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.Audit":
        """The egress audit — which hosts this gateway has contacted and which its config allows. The checkable claim behind "nothing leaves the machine". Admin-gated because it names the user's model endpoints. — Requires the gateway token."""
        return self._rt.request(OPERATIONS["gateway.audit"], path={}, query=None, headers=headers, body=None, timeout=timeout)


class ModelsApi:
    """What the gateway can route to."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.ModelList":
        """Every model the gateway can route to. Describes the routing table, not the disk: a bridge agent is listed whether or not the CLI is installed. From 0.6.64 each agent carries `available`; from 0.6.66 a cloud model carries `configured: false` when a turn is known to fail for something the user can fix."""
        return self._rt.request(OPERATIONS["models.list"], path={}, query=None, headers=headers, body=None, timeout=timeout)


class ChatApi:
    """The OpenAI-compatible chat endpoint, redacted and routed by the gateway."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def completions(self, body: "T.ChatCompletionRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.ChatCompletion":
        """One chat turn through the gateway (OpenAI-compatible). Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. **Permission prompts (gateway 0.25.0+).** List a function tool named `permission_prompt` to say your client can answer an agent's "may I run this?" — the gateway strips it from what the agent sees and lets the agent ask instead of denying headlessly. The question arrives as a `tool_calls` stop on that tool, its arguments `{ tool, input, description, path, rules }`; answer with a `tool` message whose content is the JSON `{ "behavior": "allow" | "deny", "scope": "once" | "chat", "message"?: string }`. Anything else is a deny. **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (`codex`, `claude`, `opencode`, … — `provider_type: agent` in `GET /v1/models`) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** `{ type: 'auth', code: 'agent_lane_token_required' }`. The SDKs surface that as `ForbiddenError` with `status` 401."""
        return self._rt.request(OPERATIONS["chat.completions"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def completions_stream(self, body: "T.ChatCompletionRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame["T.ChatCompletionChunk"]]:
        """The same call with `stream: true` — one frame per chunk until `[DONE]`."""
        return self._rt.stream(OPERATIONS["chat.completions"], path={}, query=query, headers=headers, body={**dict(body), "stream": True}, timeout=timeout)


class RedactionApi:
    """Preview what the model would receive."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def preview(self, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RedactionPreview":
        """What the model would receive if this text were sent now. Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values. — Gateway 0.6.62+."""
        return self._rt.request(OPERATIONS["redaction.preview"], path={}, query=query, headers=headers, body=body, timeout=timeout)


class HistoryApi:
    """The user's searchable history — chats, notes, meetings, briefs."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def search(self, body: "T.SearchRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.SearchResponse":
        """One keyword query over the warm index."""
        return self._rt.request(OPERATIONS["history.search"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def smart_search(self, body: "T.SmartSearchRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.SmartSearchResponse":
        """Several phrasings at once, rank-fused; briefs lead."""
        return self._rt.request(OPERATIONS["history.smartSearch"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def related(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The records most connected to one record."""
        return self._rt.request(OPERATIONS["history.related"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def status(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.HistoryStatus":
        """Size and freshness of the warm index (and the lossless tier from 0.10.0)."""
        return self._rt.request(OPERATIONS["history.status"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def list(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.HistoryPage":
        """A page of the warm index — metadata only, no bodies."""
        return self._rt.request(OPERATIONS["history.list"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def get(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """One full warm record, optionally paged by characters."""
        return self._rt.request(OPERATIONS["history.get"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def records(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RecordsPage":
        """WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included. The lossless tier. A gateway without the SQLite store answers 501. — Gateway 0.10.0+."""
        return self._rt.request(OPERATIONS["history.records"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def put_records(self, body: "T.PutRecordsRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.PutRecordsResponse":
        """Push whole records; the gateway derives the searchable text itself. — Requires the gateway token. Gateway 0.10.0+."""
        return self._rt.request(OPERATIONS["history.putRecords"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def stream(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame["T.HistoryStreamEvent"]]:
        """Live record changes — `hello` once, then a `records` event per change. — Gateway 0.11.0+."""
        return self._rt.stream(OPERATIONS["history.stream"], path={}, query=None, headers=headers, timeout=timeout)

    def ingest(self, body: "T.IngestRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Push flattened (lossy) records into the warm index. — Requires the gateway token."""
        return self._rt.request(OPERATIONS["history.ingest"], path={}, query=query, headers=headers, body=body, timeout=timeout)


class EventsApi:
    """The durable event log, merged across every client and served as one CloudEvents 1.0 stream — metadata only (refs and counts, never content), ordered by `(host, seq)` and `causes`, never by clock (docs/event-stream-sync.md E1)."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def since(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.EventsPage":
        """The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged. — Requires the gateway token. Gateway 0.24.0+."""
        return self._rt.request(OPERATIONS["events.since"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def push(self, body: "T.PushEventsRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.PushEventsResponse":
        """Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named. Idempotent on event id, so a retry is free. A `seq` that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in `cursor` (the gateway's highest `seq` per host) and stop re-sending what `rejected` names. At most 2000 events per batch. A gateway without SQLite answers 501. — Requires the gateway token. Gateway 0.24.0+."""
        return self._rt.request(OPERATIONS["events.push"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def cursor(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.EventsCursor":
        """The gateway's highest `seq` per host — what a client asks for before it pushes. — Requires the gateway token. Gateway 0.24.0+."""
        return self._rt.request(OPERATIONS["events.cursor"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def stats(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.EventsStats":
        """What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap. — Requires the gateway token. Gateway 0.25.1+."""
        return self._rt.request(OPERATIONS["events.stats"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def stream(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame["T.EventsStreamEvent"]]:
        """Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first. — Requires the gateway token. Gateway 0.24.0+."""
        return self._rt.stream(OPERATIONS["events.stream"], path={}, query=query, headers=headers, timeout=timeout)


class MemoryApi:
    """Durable facts about the user, carried into every turn on every client."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.MemoryList":
        """Every memory."""
        return self._rt.request(OPERATIONS["memory.list"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def recall(self, body: "T.RecallRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RecallResponse":
        """The memories relevant to a text, and a prompt block that carries them."""
        return self._rt.request(OPERATIONS["memory.recall"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def remember(self, body: "T.RememberRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RememberResponse":
        """Save a durable fact. Never anonymous — `source` is recorded. — Requires the gateway token."""
        return self._rt.request(OPERATIONS["memory.remember"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def forget(self, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Forget memories matching an id or words. — Requires the gateway token."""
        return self._rt.request(OPERATIONS["memory.forget"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def sync(self, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.MemorySyncResponse":
        """Two-way merge in one round trip — push what you have, receive the full set. — Requires the gateway token."""
        return self._rt.request(OPERATIONS["memory.sync"], path={}, query=query, headers=headers, body=body, timeout=timeout)


class PrefsApi:
    """The settings every client shares."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def get(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.Prefs":
        """The shared sections, or only their stamps. — Gateway 0.6.77+."""
        return self._rt.request(OPERATIONS["prefs.get"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def put(self, body: "T.PrefsWrite", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.PrefsWriteResult":
        """Write sections; per-section last-writer-wins by stamp. — Gateway 0.6.77+."""
        return self._rt.request(OPERATIONS["prefs.put"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def delete(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Remove one section. — Gateway 0.6.77+."""
        return self._rt.request(OPERATIONS["prefs.delete"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def events(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame["T.PrefsEvent"]]:
        """Live — which sections another client wrote. — Gateway 0.6.77+."""
        return self._rt.stream(OPERATIONS["prefs.events"], path={}, query=None, headers=headers, timeout=timeout)


class TeamsApi:
    """Team runs — the board every client can read."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list_runs(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The board — recent runs, newest first. — Gateway 0.6.78+."""
        return self._rt.request(OPERATIONS["teams.listRuns"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def create_run(self, body: "T.TeamRunCreate", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Open a run record. — Gateway 0.6.78+."""
        return self._rt.request(OPERATIONS["teams.createRun"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def get_run(self, run_id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """One run, optionally with its events. — Gateway 0.6.78+."""
        return self._rt.request(OPERATIONS["teams.getRun"], path={"runId": run_id}, query=query, headers=headers, body=None, timeout=timeout)

    def delete_run(self, run_id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Remove a run; a live one is stopped first. — Gateway 0.6.110+."""
        return self._rt.request(OPERATIONS["teams.deleteRun"], path={"runId": run_id}, query=None, headers=headers, body=None, timeout=timeout)

    def run_events(self, run_id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame["T.RunEvent"]]:
        """Tail a run — the record first, replay from `after`, then live. — Gateway 0.6.78+."""
        return self._rt.stream(OPERATIONS["teams.runEvents"], path={"runId": run_id}, query=query, headers=headers, timeout=timeout)

    def append_run_events(self, run_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The running client appends events. — Gateway 0.6.78+."""
        return self._rt.request(OPERATIONS["teams.appendRunEvents"], path={"runId": run_id}, query=query, headers=headers, body=body, timeout=timeout)

    def stop_run(self, run_id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Ask the running client to stop. — Gateway 0.6.78+."""
        return self._rt.request(OPERATIONS["teams.stopRun"], path={"runId": run_id}, query=None, headers=headers, body=None, timeout=timeout)

    def answer(self, run_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """A person answers an ask on the board. — Gateway 0.6.81+."""
        return self._rt.request(OPERATIONS["teams.answer"], path={"runId": run_id}, query=query, headers=headers, body=body, timeout=timeout)

    def decide(self, run_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Approve or reject a post. — Gateway 0.6.81+."""
        return self._rt.request(OPERATIONS["teams.decide"], path={"runId": run_id}, query=query, headers=headers, body=body, timeout=timeout)

    def post(self, run_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Post a note to a thread. — Gateway 0.6.81+."""
        return self._rt.request(OPERATIONS["teams.post"], path={"runId": run_id}, query=query, headers=headers, body=body, timeout=timeout)

    def remove_thread(self, run_id: str, thread_id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """A person removes a thread from the board. — Gateway 0.6.106+."""
        return self._rt.request(OPERATIONS["teams.removeThread"], path={"runId": run_id, "threadId": thread_id}, query=None, headers=headers, body=None, timeout=timeout)

    def handoff(self, run_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Continue a task on another model. — Gateway 0.6.85+."""
        return self._rt.request(OPERATIONS["teams.handoff"], path={"runId": run_id}, query=query, headers=headers, body=body, timeout=timeout)

    def checkpoint(self, run_id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """What a client needs to resume a run whose client went away. — Gateway 0.6.85+."""
        return self._rt.request(OPERATIONS["teams.checkpoint"], path={"runId": run_id}, query=None, headers=headers, body=None, timeout=timeout)

    def claim(self, run_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """A client takes a stopped or stale run over. — Gateway 0.6.85+."""
        return self._rt.request(OPERATIONS["teams.claim"], path={"runId": run_id}, query=query, headers=headers, body=body, timeout=timeout)


class ProjectsApi:
    """The project record — the page a goal starts on and everything done for it."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Projects, newest activity first, jobs counted. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.list"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def create(self, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Open a record (idempotent) or update the page. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.create"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def job_board(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Every open posting across projects. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.jobBoard"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def get(self, project_id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The record — jobs, runs, spend, decisions, report. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.get"], path={"projectId": project_id}, query=query, headers=headers, body=None, timeout=timeout)

    def delete(self, project_id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Remove a project record. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.delete"], path={"projectId": project_id}, query=None, headers=headers, body=None, timeout=timeout)

    def events(self, project_id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame["T.RunEvent"]]:
        """Tail a project — hello, replay, then live. — Gateway 0.6.90+."""
        return self._rt.stream(OPERATIONS["projects.events"], path={"projectId": project_id}, query=query, headers=headers, timeout=timeout)

    def append_events(self, project_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The executive loop appends (status, run.linked, run.spent, decision, report). — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.appendEvents"], path={"projectId": project_id}, query=query, headers=headers, body=body, timeout=timeout)

    def post_job(self, project_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Post a job. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.postJob"], path={"projectId": project_id}, query=query, headers=headers, body=body, timeout=timeout)

    def patch_job(self, project_id: str, job_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Move a job along its state machine. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.patchJob"], path={"projectId": project_id, "jobId": job_id}, query=query, headers=headers, body=body, timeout=timeout)

    def applications(self, project_id: str, job_id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.AnyObject":
        """The pool applies at once; `prompt` is the evaluator's, for a structured call. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.applications"], path={"projectId": project_id, "jobId": job_id}, query=query, headers=headers, body=None, timeout=timeout)

    def recruit(self, project_id: str, job_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.AnyObject":
        """One pass — fit recomputed, the evaluation read through the schema, the pick landed as events. — Gateway 0.6.90+."""
        return self._rt.request(OPERATIONS["projects.recruit"], path={"projectId": project_id, "jobId": job_id}, query=query, headers=headers, body=body, timeout=timeout)


class AgentsApi:
    """Attested per-agent scorecards."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def scorecards(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Every agent's scorecard. — Gateway 0.6.87+."""
        return self._rt.request(OPERATIONS["agents.scorecards"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def scorecard(self, agent_id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.AnyObject":
        """One agent's attested scorecard. — Gateway 0.6.87+."""
        return self._rt.request(OPERATIONS["agents.scorecard"], path={"agentId": agent_id}, query=None, headers=headers, body=None, timeout=timeout)

    def rate(self, agent_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.AnyObject":
        """A person rates the agent's work on a run, task or job. — Gateway 0.6.87+."""
        return self._rt.request(OPERATIONS["agents.rate"], path={"agentId": agent_id}, query=query, headers=headers, body=body, timeout=timeout)


class CapabilitiesApi:
    """The small non-generative models this gateway provides — discovery, and one standard signature per capability (docs/capability-endpoints.md)."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.CapabilitiesDocument":
        """What this provider can do — which capabilities, models, measured cost and runtime state. The discovery document a client chooses a provider from: one entry per capability (`detect`, `stt`, `tts` today; `decide`, `rerank`, `embed` as they land), each at its standard route, with the models it can serve, the loaded model's own label vocabulary (`detect`), the measured latency record, and the runtime's state. Never loads a model. — Gateway 0.13.0+."""
        return self._rt.request(OPERATIONS["capabilities.list"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def detect(self, body: "T.DetectRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.DetectResponse":
        """Find entities in text — the model's own labels, with offsets and scores. The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. — Gateway 0.13.0+."""
        return self._rt.request(OPERATIONS["capabilities.detect"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def rerank(self, body: "T.RerankRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RerankResponse":
        """Order documents by relevance to a query — a cross-encoder, no language model. The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the `reranker` container started under Settings › Runtime (Text Embeddings Inference with `BAAI/bge-reranker-v2-m3`, loopback-only), or the server `capabilities.rerank` names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 `bad_shape`, never a bad order). `budgetMs` is refused (503 `over_budget`) from the gateway's own latency record before dialling. 404 `no_provider` until a provider is configured; 503 `provider_unavailable` when it does not answer. `GET /v1/capabilities` lists it only while configured. — Gateway 0.20.0+."""
        return self._rt.request(OPERATIONS["capabilities.rerank"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def decide(self, body: "T.DecideRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.DecideResponse":
        """Typed decisions over a text — a choice, a score or a yes/no, each with a probability. ChatPanel's `decide` signature (docs/capability-endpoints.md §4.2): `state` is the text judged, `questions` are keyed by identifier — a `choice` picks one of its `options`, a `score` places the state on `options` read as an ordered rubric, a `noul` is yes/no. Served BY PROXY through the adapter the config names: the `opendecision` container started under Settings › Runtime (TypeSafe's `/v1/systemone` shape, loopback-only), or a server `capabilities.decide` names (a Jev endpoint with a token, another gateway). `calibrated` in the response says whether `p` may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as `/v1/rerank`. — Gateway 0.20.0+."""
        return self._rt.request(OPERATIONS["capabilities.decide"], path={}, query=query, headers=headers, body=body, timeout=timeout)


class RuntimeApi:
    """What runs processes for the user and how — the process sandbox (through the bridge), the container engine on this machine, and the services the gateway runs for the user (docs/sandboxing.md S1)."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def status(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RuntimeDocument":
        """The runtime — the process sandbox, what is running now, the container engine, the services. One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. — Gateway 0.19.0+."""
        return self._rt.request(OPERATIONS["runtime.status"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def engine(self, name: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RuntimeActionResult":
        """Start the container engine (Podman — creates and starts its machine where one is needed). `{ action: 'start' }`. Podman on macOS and Windows runs containers in a machine: made on first start (`podman machine init`), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. — Requires the gateway token. Gateway 0.19.0+."""
        return self._rt.request(OPERATIONS["runtime.engine"], path={"name": name}, query=query, headers=headers, body=body, timeout=timeout)

    def service(self, id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RuntimeActionResult":
        """Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it. `{ action: 'start' | 'stop' }`. `start` brings the engine up if it is not, runs the service's container from its kit (SearXNG: `127.0.0.1:8888`, JSON on, the limiter off, a random secret, capabilities dropped; `reranker` on 8889 and `opendecision` on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (`search.searxng.url`; `capabilities.rerank` / `capabilities.decide`, so `/v1/rerank` and `/v1/decide` are served and listed). `stop` stops the container and clears what it set. `{ action: 'model', model }` (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (`GET /v1/runtime` `services.<id>.models`) or a Hugging Face `owner/name` — gated by the container ENGINE's memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. — Requires the gateway token. Gateway 0.19.0+."""
        return self._rt.request(OPERATIONS["runtime.service"], path={"id": id}, query=query, headers=headers, body=body, timeout=timeout)


class RetrievalApi:
    """Web retrieval — search through the provider the user chose, and a page as LLM-ready Markdown, cited where it landed, with its sections (docs/web-retrieval.md)."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def search(self, body: "T.WebSearchRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.WebSearchResponse":
        """Search the web through the provider this gateway is configured with; optionally read the top results in the same request. The `search` capability (docs/web-retrieval.md §4.1). Providers are listed by `GET /v1/capabilities`: `serp` (a results page fetched and read with the shared rules — no install, the default) and `searxng` (the user's own metasearch, preferred the moment it answers). `read: N` reads the top N results in parallel in this request, each carrying a §4.2 document under `read` — one round-trip instead of 1 + N; a page that will not be read keeps its snippet with `read.restricted.reason`. The query goes through layer-1 redaction (emails, cards, keys, dictionary terms — never the name detector) before it leaves; what was replaced is dropped and `redacted: true` says so; a query with nothing left is 400 `unsafe_query`. `freshness` and `lang` are honoured by SearXNG; `site` by both. `budgetMs` covers the search and its reads and is refused (503 `over_budget`) from the provider's record. `engines` names what was actually asked, so an empty list can be told from a blocked one. — Gateway 0.15.0+."""
        return self._rt.request(OPERATIONS["retrieval.search"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def search_alias(self, q: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content. Same search as `POST /v1/search` with `read: 5` (`?read=N`, 0–10, changes it), answered in the shape the shipped ChatPanel extension's *Web search API* engine already reads: `{ code, status, data: [{ url, title, description, content, publishedTime? }] }` where `content` is the page's Markdown when it was read and the snippet otherwise — nothing needs fetching on the client. A Bearer token is accepted and ignored. — Gateway 0.15.0+."""
        return self._rt.request(OPERATIONS["retrieval.searchAlias"], path={"q": q}, query=query, headers=headers, body=None, timeout=timeout)

    def extract(self, body: "T.ExtractRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.ExtractResponse":
        """A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash. The `extract` capability (docs/capability-endpoints.md): the third leg beside `search` and `read`. Two calls on one route. With `name` and `data` (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (`hash`, SHA-256 of the bytes), its `type` as read from the bytes, its `title` when it has one and how many `pages` it has; the text stays on the server. With `hash` and `page`, one page's text comes back; the bytes crossed once. A page is the format's own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is `scanned: true` with empty pages, never OCR'd), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 `unknown_document`: send the bytes again. `budgetMs` is refused (503 `over_budget`) from the worker's own record. — Gateway 0.16.0+."""
        return self._rt.request(OPERATIONS["retrieval.extract"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def read(self, body: "T.ReadRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.ReadResponse":
        """Read one public page as LLM-ready Markdown, cited where it landed, with its sections. The `read` capability (docs/web-retrieval.md §4.2). The page is fetched from this machine as the user's agent — public web only (the shared SSRF guard, re-checked where a redirect lands), a browser User-Agent, no cookies — and turned into Markdown that keeps headings, lists, tables, code and links. `url` in the answer is where the page should be CITED: the same-origin canonical when it declares one, else where the fetch landed; `sections` are the page's own heading ids with their offset into the content so a citation can point at `url#section`. A page that could not be read as the article — a login wall, a paywall, a 429 — is a 200 with `restricted.reason` and the caller's `snippet` standing in for the content, never the wall rendered as prose. `maxChars` cuts at a section boundary. A read is served from this process's page cache when fresh (`cached: true`), revalidated with its ETag when stale. `budgetMs` is refused (503 `over_budget`) from the provider's own record, never missed. Providers are listed by `GET /v1/capabilities`: `defuddle` (in-process), `text` (the DOM-less fallback), `remote` (an `r.jina.ai`-shaped reader configured under `read.remote`). — Gateway 0.14.0+."""
        return self._rt.request(OPERATIONS["retrieval.read"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def read_alias(self, url: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it. Same read as `POST /v1/read`, addressed the way the shipped ChatPanel extension's *reader service* slot (and anything else built for `r.jina.ai`) already addresses a reader: the page URL appended to the base, as is or percent-encoded, with its own query string kept. Answers `text/plain` with `Title:` / `URL Source:` / `Published Time:` header lines, a blank line and `Markdown Content:`; under `Accept: application/json` the §4.2 document wrapped as `{ code, status, data }`. `X-Return-Format: text` selects the text form. A Bearer token is accepted and ignored. — Gateway 0.14.0+."""
        return self._rt.request(OPERATIONS["retrieval.readAlias"], path={"url": url}, query=None, headers=headers, body=None, timeout=timeout)


class EnginesApi:
    """The model ledger — every engine's card."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Every engine's card. — Gateway 0.6.89+."""
        return self._rt.request(OPERATIONS["engines.list"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def card(self, engine_key: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.AnyObject":
        """One engine's card, optionally with entries. — Gateway 0.6.89+."""
        return self._rt.request(OPERATIONS["engines.card"], path={"engineKey": engine_key}, query=query, headers=headers, body=None, timeout=timeout)

    def append_entry(self, engine_key: str, body: "T.AnyObject", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.AnyObject":
        """Append a ledger entry for an engine. — Gateway 0.6.89+."""
        return self._rt.request(OPERATIONS["engines.appendEntry"], path={"engineKey": engine_key}, query=query, headers=headers, body=body, timeout=timeout)


class SkillsApi:
    """The skills on this machine (served through the bridge)."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The skills on this machine — with a prompt character count, not the prompt. — Gateway 0.6.64+."""
        return self._rt.request(OPERATIONS["skills.list"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def get(self, skill_id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """One skill, with its prompt. — Gateway 0.6.67+."""
        return self._rt.request(OPERATIONS["skills.get"], path={"skillId": skill_id}, query=query, headers=headers, body=None, timeout=timeout)


class FusionsApi:
    """Several models as one — union, draft + target, fallback."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.FusionList":
        """Several models as one — the fusions this gateway has. Derived from state (the entity detector's union once a companion is ready, an engine drafting with a second model) and composed by the user (`POST /config { fusions }`, a chat fallback in order). A chat turn names a fallback as `model: "fusion:<id>"` and is routed to the first member that is up; `x-chatpanel-fusion` on the response says which. — Gateway 0.33.0+."""
        return self._rt.request(OPERATIONS["fusions.list"], path={}, query=None, headers=headers, body=None, timeout=timeout)


class Api:
    """The namespaces a client exposes, built on one runtime."""

    def __init__(self, rt: Runtime) -> None:
        self.gateway = GatewayApi(rt)
        self.models = ModelsApi(rt)
        self.chat = ChatApi(rt)
        self.redaction = RedactionApi(rt)
        self.history = HistoryApi(rt)
        self.events = EventsApi(rt)
        self.memory = MemoryApi(rt)
        self.prefs = PrefsApi(rt)
        self.teams = TeamsApi(rt)
        self.projects = ProjectsApi(rt)
        self.agents = AgentsApi(rt)
        self.capabilities = CapabilitiesApi(rt)
        self.runtime = RuntimeApi(rt)
        self.retrieval = RetrievalApi(rt)
        self.engines = EnginesApi(rt)
        self.skills = SkillsApi(rt)
        self.fusions = FusionsApi(rt)
