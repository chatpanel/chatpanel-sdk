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
    "engines.list": Operation(id="engines.list", method="GET", path="/v1/engines", auth="open", since="0.6.89", stream=None, path_params=(), query_params=("minCalls",)),
    "engines.card": Operation(id="engines.card", method="GET", path="/v1/engines/{engineKey}/card", auth="open", since="0.6.89", stream=None, path_params=("engineKey",), query_params=("entries", "minCalls",)),
    "engines.appendEntry": Operation(id="engines.appendEntry", method="POST", path="/v1/engines/{engineKey}/entries", auth="open", since="0.6.89", stream=None, path_params=("engineKey",), query_params=()),
    "skills.list": Operation(id="skills.list", method="GET", path="/skills", auth="open", since="0.6.64", stream=None, path_params=(), query_params=("workdir",)),
    "skills.get": Operation(id="skills.get", method="GET", path="/skills/{skillId}", auth="open", since="0.6.67", stream=None, path_params=("skillId",), query_params=("workdir",)),
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
        """One chat turn through the gateway (OpenAI-compatible). Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (`codex`, `claude`, `opencode`, … — `provider_type: agent` in `GET /v1/models`) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** `{ type: 'auth', code: 'agent_lane_token_required' }`. The SDKs surface that as `ForbiddenError` with `status` 401."""
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


class Api:
    """The namespaces a client exposes, built on one runtime."""

    def __init__(self, rt: Runtime) -> None:
        self.gateway = GatewayApi(rt)
        self.models = ModelsApi(rt)
        self.chat = ChatApi(rt)
        self.redaction = RedactionApi(rt)
        self.history = HistoryApi(rt)
        self.memory = MemoryApi(rt)
        self.prefs = PrefsApi(rt)
        self.teams = TeamsApi(rt)
        self.projects = ProjectsApi(rt)
        self.agents = AgentsApi(rt)
        self.engines = EnginesApi(rt)
        self.skills = SkillsApi(rt)
