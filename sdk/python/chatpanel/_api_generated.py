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
    "history.research": Operation(id="history.research", method="POST", path="/v1/research", auth="open", since="0.58.0", stream=None, path_params=(), query_params=()),
    "history.related": Operation(id="history.related", method="GET", path="/v1/history/related", auth="open", since=None, stream=None, path_params=(), query_params=("id", "limit",)),
    "history.status": Operation(id="history.status", method="GET", path="/v1/history/status", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "history.list": Operation(id="history.list", method="GET", path="/v1/history/list", auth="open", since=None, stream=None, path_params=(), query_params=("limit", "offset", "type",)),
    "history.get": Operation(id="history.get", method="GET", path="/v1/history/get", auth="open", since=None, stream=None, path_params=(), query_params=("id", "maxChars", "offset",)),
    "history.records": Operation(id="history.records", method="GET", path="/v1/history/records", auth="open", since="0.10.0", stream=None, path_params=(), query_params=("since", "cursor", "limit", "kind", "bytes", "after_rev",)),
    "history.putRecords": Operation(id="history.putRecords", method="PUT", path="/v1/history/records", auth="token", since="0.10.0", stream=None, path_params=(), query_params=()),
    "history.stream": Operation(id="history.stream", method="GET", path="/v1/history/stream", auth="open", since="0.11.0", stream="sse", path_params=(), query_params=()),
    "events.since": Operation(id="events.since", method="GET", path="/v1/events", auth="token", since="0.24.0", stream=None, path_params=(), query_params=("cursor", "limit", "host",)),
    "events.push": Operation(id="events.push", method="POST", path="/v1/events", auth="token", since="0.24.0", stream=None, path_params=(), query_params=()),
    "events.delete": Operation(id="events.delete", method="DELETE", path="/v1/events", auth="token", since="0.105.0", stream=None, path_params=(), query_params=("host", "all", "force",)),
    "events.cursor": Operation(id="events.cursor", method="GET", path="/v1/events/cursor", auth="token", since="0.24.0", stream=None, path_params=(), query_params=()),
    "events.stats": Operation(id="events.stats", method="GET", path="/v1/events/stats", auth="token", since="0.25.1", stream=None, path_params=(), query_params=()),
    "events.stream": Operation(id="events.stream", method="GET", path="/v1/events/stream", auth="token", since="0.24.0", stream="sse", path_params=(), query_params=("cursor",)),
    "history.ingest": Operation(id="history.ingest", method="POST", path="/v1/history/ingest", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "memory.list": Operation(id="memory.list", method="GET", path="/v1/memory/list", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "memory.recall": Operation(id="memory.recall", method="POST", path="/v1/memory/recall", auth="open", since=None, stream=None, path_params=(), query_params=()),
    "memory.remember": Operation(id="memory.remember", method="POST", path="/v1/memory/remember", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "threads.send": Operation(id="threads.send", method="POST", path="/v1/threads/send", auth="token", since="0.69.0", stream=None, path_params=(), query_params=()),
    "memory.forget": Operation(id="memory.forget", method="POST", path="/v1/memory/forget", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "memory.sync": Operation(id="memory.sync", method="POST", path="/v1/memory/sync", auth="token", since=None, stream=None, path_params=(), query_params=()),
    "prefs.get": Operation(id="prefs.get", method="GET", path="/v1/prefs", auth="open", since="0.6.77", stream=None, path_params=(), query_params=("section", "stamps",)),
    "prefs.put": Operation(id="prefs.put", method="POST", path="/v1/prefs", auth="open", since="0.6.77", stream=None, path_params=(), query_params=()),
    "prefs.delete": Operation(id="prefs.delete", method="DELETE", path="/v1/prefs", auth="open", since="0.6.77", stream=None, path_params=(), query_params=("section",)),
    "prefs.events": Operation(id="prefs.events", method="GET", path="/v1/prefs/events", auth="open", since="0.6.77", stream="sse", path_params=(), query_params=()),
    "teams.listRuns": Operation(id="teams.listRuns", method="GET", path="/v1/teams/runs", auth="open", since="0.6.78", stream=None, path_params=(), query_params=("limit", "team",)),
    "teams.createRun": Operation(id="teams.createRun", method="POST", path="/v1/teams/runs", auth="open", since="0.6.78", stream=None, path_params=(), query_params=()),
    "teams.stream": Operation(id="teams.stream", method="GET", path="/v1/teams/stream", auth="token", since="0.55.0", stream="sse", path_params=(), query_params=()),
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
    "runtime.recipe": Operation(id="runtime.recipe", method="GET", path="/v1/runtime/recipe", auth="token", since="0.122.0", stream=None, path_params=(), query_params=("service", "model",)),
    "runtime.plan": Operation(id="runtime.plan", method="GET", path="/v1/runtime/plan", auth="open", since="0.74.0", stream=None, path_params=(), query_params=("service", "model", "ctx", "need_mb",)),
    "runtime.engine": Operation(id="runtime.engine", method="POST", path="/v1/runtime/engines/{name}", auth="token", since="0.19.0", stream=None, path_params=("name",), query_params=()),
    "runtime.service": Operation(id="runtime.service", method="POST", path="/v1/runtime/services/{id}", auth="token", since="0.19.0", stream=None, path_params=("id",), query_params=()),
    "capabilities.detect": Operation(id="capabilities.detect", method="POST", path="/v1/detect", auth="open", since="0.13.0", stream=None, path_params=(), query_params=()),
    "capabilities.rerank": Operation(id="capabilities.rerank", method="POST", path="/v1/rerank", auth="open", since="0.20.0", stream=None, path_params=(), query_params=()),
    "capabilities.decide": Operation(id="capabilities.decide", method="POST", path="/v1/decide", auth="open", since="0.20.0", stream=None, path_params=(), query_params=()),
    "retrieval.search": Operation(id="retrieval.search", method="POST", path="/v1/search", auth="open", since="0.15.0", stream=None, path_params=(), query_params=()),
    "retrieval.searchAlias": Operation(id="retrieval.searchAlias", method="GET", path="/v1/search/{q}", auth="open", since="0.15.0", stream=None, path_params=("q",), query_params=("read",)),
    "capabilities.embed": Operation(id="capabilities.embed", method="POST", path="/v1/embeddings", auth="open", since="0.101.0", stream=None, path_params=(), query_params=()),
    "retrieval.extractContext": Operation(id="retrieval.extractContext", method="POST", path="/v1/extract/context", auth="open", since="0.102.0", stream=None, path_params=(), query_params=()),
    "retrieval.extract": Operation(id="retrieval.extract", method="POST", path="/v1/extract", auth="open", since="0.16.0", stream=None, path_params=(), query_params=()),
    "knowledge.list": Operation(id="knowledge.list", method="GET", path="/v1/kb", auth="open", since="0.101.0", stream=None, path_params=(), query_params=()),
    "knowledge.create": Operation(id="knowledge.create", method="POST", path="/v1/kb", auth="open", since="0.101.0", stream=None, path_params=(), query_params=()),
    "knowledge.status": Operation(id="knowledge.status", method="GET", path="/v1/kb/{id}", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.delete": Operation(id="knowledge.delete", method="DELETE", path="/v1/kb/{id}", auth="token", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.documents": Operation(id="knowledge.documents", method="GET", path="/v1/kb/{id}/documents", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.add": Operation(id="knowledge.add", method="POST", path="/v1/kb/{id}/documents", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.page": Operation(id="knowledge.page", method="GET", path="/v1/kb/{id}/documents/{doc}", auth="open", since="0.101.0", stream=None, path_params=("id", "doc",), query_params=("page",)),
    "knowledge.removeDocument": Operation(id="knowledge.removeDocument", method="DELETE", path="/v1/kb/{id}/documents/{doc}", auth="token", since="0.101.0", stream=None, path_params=("id", "doc",), query_params=()),
    "knowledge.passage": Operation(id="knowledge.passage", method="GET", path="/v1/kb/{id}/passages/{passage}", auth="open", since="0.101.0", stream=None, path_params=("id", "passage",), query_params=()),
    "knowledge.outline": Operation(id="knowledge.outline", method="GET", path="/v1/kb/{id}/outline", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=("doc",)),
    "knowledge.search": Operation(id="knowledge.search", method="POST", path="/v1/kb/{id}/search", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.research": Operation(id="knowledge.research", method="POST", path="/v1/kb/{id}/research", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.graph": Operation(id="knowledge.graph", method="POST", path="/v1/kb/{id}/graph", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.notes": Operation(id="knowledge.notes", method="GET", path="/v1/kb/{id}/notes", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.note": Operation(id="knowledge.note", method="POST", path="/v1/kb/{id}/notes", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "knowledge.noteStatus": Operation(id="knowledge.noteStatus", method="POST", path="/v1/kb/{id}/notes/{note}", auth="token", since="0.101.0", stream=None, path_params=("id", "note",), query_params=()),
    "knowledge.access": Operation(id="knowledge.access", method="GET", path="/v1/kb/{id}/access", auth="open", since="0.101.1", stream=None, path_params=("id",), query_params=()),
    "knowledge.setAccess": Operation(id="knowledge.setAccess", method="POST", path="/v1/kb/{id}/access", auth="token", since="0.101.1", stream=None, path_params=("id",), query_params=()),
    "knowledge.embed": Operation(id="knowledge.embed", method="POST", path="/v1/kb/{id}/embed", auth="open", since="0.101.0", stream=None, path_params=("id",), query_params=()),
    "retrieval.read": Operation(id="retrieval.read", method="POST", path="/v1/read", auth="open", since="0.14.0", stream=None, path_params=(), query_params=()),
    "retrieval.readAlias": Operation(id="retrieval.readAlias", method="GET", path="/v1/read/{url}", auth="open", since="0.14.0", stream=None, path_params=("url",), query_params=()),
    "engines.list": Operation(id="engines.list", method="GET", path="/v1/engines", auth="open", since="0.6.89", stream=None, path_params=(), query_params=("minCalls",)),
    "engines.card": Operation(id="engines.card", method="GET", path="/v1/engines/{engineKey}/card", auth="open", since="0.6.89", stream=None, path_params=("engineKey",), query_params=("entries", "minCalls",)),
    "engines.appendEntry": Operation(id="engines.appendEntry", method="POST", path="/v1/engines/{engineKey}/entries", auth="open", since="0.6.89", stream=None, path_params=("engineKey",), query_params=()),
    "skills.quarantined": Operation(id="skills.quarantined", method="GET", path="/skills-quarantined", auth="open", since="0.48.0", stream=None, path_params=(), query_params=("workdir",)),
    "a2a.card": Operation(id="a2a.card", method="POST", path="/a2a/card", auth="token", since="0.53.0", stream=None, path_params=(), query_params=()),
    "a2a.message": Operation(id="a2a.message", method="POST", path="/a2a/message", auth="token", since="0.53.0", stream=None, path_params=(), query_params=()),
    "a2a.stream": Operation(id="a2a.stream", method="POST", path="/a2a/message/stream", auth="token", since="0.53.0", stream="sse", path_params=(), query_params=()),
    "a2a.task": Operation(id="a2a.task", method="POST", path="/a2a/task", auth="token", since="0.53.0", stream=None, path_params=(), query_params=()),
    "a2a.agents": Operation(id="a2a.agents", method="GET", path="/a2a/agents", auth="token", since="0.53.0", stream=None, path_params=(), query_params=()),
    "agents.listDefs": Operation(id="agents.listDefs", method="GET", path="/agent-defs", auth="open", since="0.48.0", stream=None, path_params=(), query_params=("workdir", "dir",)),
    "agents.getDef": Operation(id="agents.getDef", method="GET", path="/agent-defs/{agentId}", auth="open", since="0.48.0", stream=None, path_params=("agentId",), query_params=("workdir",)),
    "agents.exportPlan": Operation(id="agents.exportPlan", method="POST", path="/agent-defs/export-plan", auth="token", since="0.48.0", stream=None, path_params=(), query_params=()),
    "agents.exportDef": Operation(id="agents.exportDef", method="POST", path="/agent-defs/export", auth="token", since="0.48.0", stream=None, path_params=(), query_params=()),
    "skills.list": Operation(id="skills.list", method="GET", path="/skills", auth="open", since="0.6.64", stream=None, path_params=(), query_params=("workdir",)),
    "skills.get": Operation(id="skills.get", method="GET", path="/skills/{skillId}", auth="open", since="0.6.67", stream=None, path_params=("skillId",), query_params=("workdir",)),
    "skills.file": Operation(id="skills.file", method="GET", path="/skills/{skillId}/file/{path}", auth="open", since="0.11.4", stream=None, path_params=("skillId", "path",), query_params=("workdir",)),
    "fusions.list": Operation(id="fusions.list", method="GET", path="/v1/fusions", auth="open", since="0.33.0", stream=None, path_params=(), query_params=()),
    "browser.status": Operation(id="browser.status", method="GET", path="/v1/browser", auth="token", since="0.59.0", stream=None, path_params=(), query_params=()),
    "browser.call": Operation(id="browser.call", method="POST", path="/v1/browser/call", auth="token", since="0.59.0", stream=None, path_params=(), query_params=()),
    "browser.stream": Operation(id="browser.stream", method="GET", path="/v1/browser/stream", auth="token", since="0.59.0", stream="sse", path_params=(), query_params=()),
    "browser.announce": Operation(id="browser.announce", method="POST", path="/v1/browser/announce", auth="token", since="0.59.0", stream=None, path_params=(), query_params=()),
    "browser.result": Operation(id="browser.result", method="POST", path="/v1/browser/result", auth="token", since="0.59.0", stream=None, path_params=(), query_params=()),
    "link.status": Operation(id="link.status", method="GET", path="/v1/link", auth="token", since="0.60.0", stream=None, path_params=(), query_params=()),
    "link.pair": Operation(id="link.pair", method="POST", path="/v1/link/pair", auth="token", since="0.60.0", stream=None, path_params=(), query_params=()),
    "link.route": Operation(id="link.route", method="POST", path="/v1/link/route", auth="token", since="0.65.0", stream=None, path_params=(), query_params=()),
    "link.removeDevice": Operation(id="link.removeDevice", method="DELETE", path="/v1/link/devices/{deviceId}", auth="token", since="0.60.0", stream=None, path_params=("deviceId",), query_params=()),
    "link.approvals": Operation(id="link.approvals", method="GET", path="/v1/link/approvals", auth="token", since="0.91.0", stream=None, path_params=(), query_params=()),
    "link.approvalsStream": Operation(id="link.approvalsStream", method="GET", path="/v1/link/approvals/stream", auth="token", since="0.91.0", stream="sse", path_params=(), query_params=()),
    "link.answerApproval": Operation(id="link.answerApproval", method="POST", path="/v1/link/approvals/{approvalId}", auth="token", since="0.91.0", stream=None, path_params=("approvalId",), query_params=()),
    "link.listFiles": Operation(id="link.listFiles", method="GET", path="/v1/link/files", auth="token", since="0.92.0", stream=None, path_params=(), query_params=()),
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

    def research(self, body: "T.ResearchRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.ResearchResponse":
        """A question about the person's own data, researched over the whole store. The shared bounded loop over the warm store: the question is framed (kind of record, people named, dates, the latest or the first, a count, counts per person or per month/week/day), every matching record is queried — sorted by date when it asks for the last one, counted when it asks how many — the top records are read in full, and the result carries what was searched, found and read, plus `attachment`: one block to hand a model, with record ids to cite. Pass `next` back as `previous` to continue the question ("no, even later", "what was it about"). Open like the other history reads; naming a `model` (to condense long records and check the evidence) runs a model on the caller's behalf and needs the gateway token. — Gateway 0.58.0+."""
        return self._rt.request(OPERATIONS["history.research"], path={}, query=query, headers=headers, body=body, timeout=timeout)

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

    def delete(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.EventsDeleted":
        """Delete one host's slice of the merged log, or the whole log — only with `force=1`. A client's "Clear activity" reaching the copy held here. Name exactly one of `host` or `all=1`. Without `force=1` nothing is deleted: the answer is 409 `confirm_required` with `wouldDelete`, so leaving the flag off (or sending `force=0`) is a dry run, never a delete. The host's cursor entry goes with its events, so its next push starts afresh. A tailing stream gets a `deleted` frame. Idempotent: a host with nothing left deletes 0. — Requires the gateway token. Gateway 0.105.0+."""
        return self._rt.request(OPERATIONS["events.delete"], path={}, query=query, headers=headers, body=None, timeout=timeout)

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


class ThreadsApi:
    """The person's chats, asked by one another — any chat's own model answers in it."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def send(self, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Ask one of the person's chats and get its answer; the exchange is added to that chat. The chat's own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; `dryRun` returns the chat's title and model for that question without running anything. — Requires the gateway token. Gateway 0.69.0+."""
        return self._rt.request(OPERATIONS["threads.send"], path={}, query=query, headers=headers, body=body, timeout=timeout)


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

    def stream(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame["T.TeamsStreamEvent"]]:
        """Run changes, pushed — `hello` once, then a `run` notice whenever a run is created, moves or is removed. A Runs or Board view listens here and re-reads a run (`GET /v1/teams/runs/{runId}`) or the list only when a notice names one, instead of polling. Facts only — a task's streamed text never produces a notice. Staleness is judged by the clock, not by an event, so a view keeps a slow re-read beside the stream. — Requires the gateway token. Gateway 0.55.0+."""
        return self._rt.stream(OPERATIONS["teams.stream"], path={}, query=None, headers=headers, timeout=timeout)

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

    def list_defs(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The agent definitions on this machine, from every tool that writes one. `.claude/agents/*.md`, `.codex/agents/*.toml`, `~/.chatpanel/agents/*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them. — Gateway 0.48.0+."""
        return self._rt.request(OPERATIONS["agents.listDefs"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def get_def(self, agent_id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """One agent definition, prompt included. — Gateway 0.48.0+."""
        return self._rt.request(OPERATIONS["agents.getDef"], path={"agentId": agent_id}, query=query, headers=headers, body=None, timeout=timeout)

    def export_plan(self, body: "T.AgentExportRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.AgentExportPlan":
        """What an export would write, and what the target cannot carry — without writing it. A separate call from the export itself, deliberately: "show me what you are about to do to my Claude Code directory" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry. — Requires the gateway token. Gateway 0.48.0+."""
        return self._rt.request(OPERATIONS["agents.exportPlan"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def export_def(self, body: "T.AgentExportRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Write an agent definition into another tool's folder. Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`. — Requires the gateway token. Gateway 0.48.0+."""
        return self._rt.request(OPERATIONS["agents.exportDef"], path={}, query=query, headers=headers, body=body, timeout=timeout)


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

    def embed(self, body: "T.EmbedRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.EmbedResponse":
        """One unit vector per input — OpenAI-shaped embeddings, in the gateway's own process by default. The `embed` capability (docs/capability-endpoints.md C4), served since 0.101.0 by the in-process embedder (`Xenova/multilingual-e5-small` by default, 384 dimensions, q8 on the ONNX runtime; `Xenova/all-MiniLM-L6-v2` as the lighter English-only pick) — or by the server `capabilities.embed` names, through its adapter. `input` is a string or up to 256 strings; `kind` says whether they are queries or passages (E5 prefixes each). The vectors are unit length, so cosine is a dot product. 503 `provider_warming` while the model downloads (the first call starts it; a caller is never held), 404 `no_provider` when it is turned off (`capabilities.embed.provider = none`), `budgetMs` refused from the record like every capability. The knowledge base (`/v1/kb`) uses this for its vector lane; it works on words and the graph until the model is on disk. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["capabilities.embed"], path={}, query=query, headers=headers, body=body, timeout=timeout)


class RuntimeApi:
    """What runs processes for the user and how — the process sandbox (through the bridge), the container engine on this machine, and the services the gateway runs for the user (docs/sandboxing.md S1)."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def status(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RuntimeDocument":
        """The runtime — the process sandbox, what is running now, the container engine, the services. One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. — Gateway 0.19.0+."""
        return self._rt.request(OPERATIONS["runtime.status"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def recipe(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RuntimeRecipe":
        """What a GGUF repo runs as on this machine, before anything is downloaded. For llama.cpp: the repo's file list read from Hugging Face, and 64 KB of one weights file's header for its architecture. Answers the quant picked (Q4_K_M when none is named), every quant with its size and whether it fits in about three quarters of the machine's memory, the vision projector and the speculative-decoding draft the repo ships (with the `--spec-type` its name means), and the layout chosen — `alt` when the repo also carries the weights as `.gguf_file` and only that layout is one the installed llama.cpp knows. A repo whose architecture the installed llama.cpp cannot load is a 400 with `code: unsupported_arch`. Nothing is saved; a start pulls the same recipe. — Requires the gateway token. Gateway 0.122.0+."""
        return self._rt.request(OPERATIONS["runtime.recipe"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def plan(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.RuntimePlan":
        """Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free. Checked against what Heatwatch (an optional macOS tool on `127.0.0.1:7878`) says is reclaimable NOW, with the apps to close when it is short — or, without Heatwatch, against the machine's total memory, and `source` says which (`heatwatch` | `total-memory`). The KV cache is counted from the model's `config.json` when it is in the gateway's model cache (`contextCounted` says whether it was). A model the catalogue does not list needs `need_mb`. A native service's start makes the same check and refuses a model that does not fit what is free, unless the start says `force: true`. `runtime.heatwatch: false` stops the gateway asking Heatwatch. — Gateway 0.74.0+."""
        return self._rt.request(OPERATIONS["runtime.plan"], path={}, query=query, headers=headers, body=None, timeout=timeout)

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
        """Search the web through the provider this gateway is configured with; optionally read the top results in the same request. The `search` capability (docs/web-retrieval.md §4.1). Providers are listed by `GET /v1/capabilities`: `serp` (a results page fetched and read with the shared rules — no install, the default) and `searxng` (the user's own metasearch, preferred the moment it answers). `read: N` reads the top N results in parallel in this request, each carrying a §4.2 document under `read` — one round-trip instead of 1 + N; a page that will not be read keeps its snippet with `read.restricted.reason`. The query goes through layer-1 redaction (emails, cards, keys, dictionary terms — never the name detector) before it leaves; what was replaced is dropped and `redacted: true` says so; a query with nothing left is 400 `unsafe_query`. `freshness` and `lang` are honoured by SearXNG; `site` by both. `budgetMs` covers the search and its reads and is refused (503 `over_budget`) from the provider's record. `engines` names what was actually asked, so an empty list can be told from a blocked one. Since gateway 0.78.0 `serp` asks one built-in engine per search (DuckDuckGo, Startpage, Bing) plus any search API the person added in the gateway's settings (Exa, Brave, Tavily, Serper, SerpApi, Google Programmable Search, Jina, Mwmbl, or one they describe — keyed ones first); an engine that refuses rests for a while. Since gateway 0.79.0 every result is tagged with its `engine` and `via` (the kind of door it came through), and `trail` says what each provider and engine asked did and, when nothing came back, why — `nothing` (they answered, found nothing) reads differently from `blocked`, `resting` or `offline`. Both are optional: an older gateway sends neither. — Gateway 0.15.0+."""
        return self._rt.request(OPERATIONS["retrieval.search"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def search_alias(self, q: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The s.jina.ai-shaped alias — `GET /v1/search/<query>` — the top results WITH their content. Same search as `POST /v1/search` with `read: 5` (`?read=N`, 0–10, changes it), answered in the shape the shipped ChatPanel extension's *Web search API* engine already reads: `{ code, status, data: [{ url, title, description, content, publishedTime? }] }` where `content` is the page's Markdown when it was read and the snippet otherwise — nothing needs fetching on the client. A Bearer token is accepted and ignored. Since gateway 0.79.0 each item may carry `engine` and `via`, and the top level `trail`, exactly as `POST /v1/search` does (a Jina reader ignores them). — Gateway 0.15.0+."""
        return self._rt.request(OPERATIONS["retrieval.searchAlias"], path={"q": q}, query=query, headers=headers, body=None, timeout=timeout)

    def extract_context(self, body: "T.ExtractContextRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.ExtractContextResponse":
        """The attached document(s) read FOR a question — one cited block to put before the question, as ChatPanel's own clients do. The turn pipeline's document stage as an API. Every ChatPanel client reads a file the person attached BEFORE a small model answers: whole when it fits the window's share of characters, else the pages that carry the question's words, each page cited, as one `prefetch` block placed before the question (a small model reads context first). A harness built on this SDK gets the same block here: send the question and the documents (the bytes, base64, or the `hash` of one `/v1/extract` already opened), and put `attachment.text` in the user message ahead of the question. `window` (tokens) sizes the share — a 4k on-device model gets a few thousand characters, a large window far more — or `budgetChars` sets it outright. `how` says whether the whole document went or pages were picked; `read` lists each document's pages, `skipped` the ones that could not be opened. A document with no text layer is named as a scan inside the block rather than guessed from. Parsed in the same worker as `/v1/extract`, on this machine; nothing leaves it. — Gateway 0.102.0+."""
        return self._rt.request(OPERATIONS["retrieval.extractContext"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def extract(self, body: "T.ExtractRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.ExtractResponse":
        """A document's pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash. The `extract` capability (docs/capability-endpoints.md): the third leg beside `search` and `read`. Two calls on one route. With `name` and `data` (the file, base64), the document is parsed in a worker process on this machine — no network, the vault unreadable — and the answer is its identity (`hash`, SHA-256 of the bytes), its `type` as read from the bytes, its `title` when it has one and how many `pages` it has; the text stays on the server. With `hash` and `page`, one page's text comes back; the bytes crossed once. A page is the format's own unit (a PDF page, a slide, a sheet) or, for a document with none (DOCX, Markdown, text), a run of ~6,000 characters cut at a heading. Readers: PDF (pdf.js, the text layer — a scanned document is `scanned: true` with empty pages, never OCR'd), DOCX (Markdown), XLSX/ODS (rows of cells), PPTX/ODP (a slide per page, speaker notes appended), ODT, Markdown, text, CSV, HTML. A hash the worker no longer holds (it is dropped when idle) is a 404 `unknown_document`: send the bytes again. `budgetMs` is refused (503 `over_budget`) from the worker's own record. — Gateway 0.16.0+."""
        return self._rt.request(OPERATIONS["retrieval.extract"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def read(self, body: "T.ReadRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.ReadResponse":
        """Read one public page as LLM-ready Markdown, cited where it landed, with its sections. The `read` capability (docs/web-retrieval.md §4.2). The page is fetched from this machine as the user's agent — public web only (the shared SSRF guard, re-checked where a redirect lands), a browser User-Agent, no cookies — and turned into Markdown that keeps headings, lists, tables, code and links. `url` in the answer is where the page should be CITED: the same-origin canonical when it declares one, else where the fetch landed; `sections` are the page's own heading ids with their offset into the content so a citation can point at `url#section`. A page that could not be read as the article — a login wall, a paywall, a 429 — is a 200 with `restricted.reason` and the caller's `snippet` standing in for the content, never the wall rendered as prose. `maxChars` cuts at a section boundary. A read is served from this process's page cache when fresh (`cached: true`), revalidated with its ETag when stale. `budgetMs` is refused (503 `over_budget`) from the provider's own record, never missed. Providers are listed by `GET /v1/capabilities`: `defuddle` (in-process), `text` (the DOM-less fallback), `remote` (an `r.jina.ai`-shaped reader configured under `read.remote`). — Gateway 0.14.0+."""
        return self._rt.request(OPERATIONS["retrieval.read"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def read_alias(self, url: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The r.jina.ai-shaped alias — `GET /v1/read/https://…` — for clients that already speak it. Same read as `POST /v1/read`, addressed the way the shipped ChatPanel extension's *reader service* slot (and anything else built for `r.jina.ai`) already addresses a reader: the page URL appended to the base, as is or percent-encoded, with its own query string kept. Answers `text/plain` with `Title:` / `URL Source:` / `Published Time:` header lines, a blank line and `Markdown Content:`; under `Accept: application/json` the §4.2 document wrapped as `{ code, status, data }`. `X-Return-Format: text` selects the text form. A Bearer token is accepted and ignored. — Gateway 0.14.0+."""
        return self._rt.request(OPERATIONS["retrieval.readAlias"], path={"url": url}, query=None, headers=headers, body=None, timeout=timeout)


class KnowledgeApi:
    """Knowledge bases — the user's documents (PDFs, office files, folders, pages) indexed on this machine and searched by words, meaning and graph; researched by the harness loop; annotated over time (docs/knowledge-base.md)."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbList":
        """The knowledge bases on this machine. Each base with its id, name, document count, vector count and model. Loads no passages. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.list"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def create(self, body: "T.KbCreateRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbStatusResponse":
        """Create a knowledge base (or return the one with that id). A base is a folder under `~/.chatpanel/kb/<id>/` (manifest, passages, notes, vectors, a Markdown report) — a projection over the documents added to it, rebuildable from them. `embed: off` keeps it on words and the graph only. 201 when created, 200 with `existed` when the id was already there. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.create"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def status(self, id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbStatusResponse":
        """What a base holds — its documents, passages, notes, vectors, entities and connections. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.status"], path={"id": id}, query=None, headers=headers, body=None, timeout=timeout)

    def delete(self, id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbOkResponse":
        """Delete a base and its folder. — Requires the gateway token. Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.delete"], path={"id": id}, query=None, headers=headers, body=None, timeout=timeout)

    def documents(self, id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbDocuments":
        """The documents in a base. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.documents"], path={"id": id}, query=None, headers=headers, body=None, timeout=timeout)

    def add(self, id: str, body: "T.KbAddRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbAddResponse":
        """Add a document — bytes, a path on this machine, a URL, or text — and index it. One of four sources: `name` + `data` (the file, base64, up to 64 MB — a PDF, DOCX, XLSX, PPTX, ODF, Markdown or text, parsed in the extract worker); `path` (a file or folder on this machine, walked with the same refusals the `files` tool applies — credential stores withheld and named, `node_modules` and hidden folders skipped, documents up to 64 MB; TOKEN-GATED: a path is a read on the machine, so it is 403 to a caller without the token or the extension origin); `url` (a public page through the `read` capability); `text`. The same bytes added again REPLACE the document. Passages are chunked by the document's own headings with page citations, indexed by words and in the graph, and embedded when the embedder's model is on disk (`embedded` says how many); the report is rewritten. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.add"], path={"id": id}, query=query, headers=headers, body=body, timeout=timeout)

    def page(self, id: str, doc: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbPage":
        """One page of a document, from the index. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.page"], path={"id": id, "doc": doc}, query=query, headers=headers, body=None, timeout=timeout)

    def remove_document(self, id: str, doc: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbStatusResponse":
        """Remove a document, its passages and vectors (notes keep their text and lose the cite). — Requires the gateway token. Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.removeDocument"], path={"id": id, "doc": doc}, query=None, headers=headers, body=None, timeout=timeout)

    def passage(self, id: str, passage: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbPassage":
        """One passage by id, with its citation. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.passage"], path={"id": id, "passage": passage}, query=None, headers=headers, body=None, timeout=timeout)

    def outline(self, id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbOutline":
        """The table of contents a document's headings imply — every section once, with where it starts. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.outline"], path={"id": id}, query=query, headers=headers, body=None, timeout=timeout)

    def search(self, id: str, body: "T.KbSearchRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbSearchResponse":
        """The passages that answer a question — words, meaning and graph fused, a reranker on top, each with its citation. The words in up to four query shapes (BM25), the meaning when the base has vectors (the query embedded by the same model), the graph's one-hop expansion of the best hits (a passage sharing a name or a section with a hit, and `via` says which), and the notes as their own lane — fused by Reciprocal Rank Fusion with the graph at half weight, then the gateway's reranker fused in (never substituted). Each result carries `lanes` (which found it), `scores` (each lane's own, comparable within one query) and `cite` as the model is told to write it (`[report.pdf p.12]`). `docs` scopes to documents; `queries` adds the caller's own phrasings. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.search"], path={"id": id}, query=query, headers=headers, body=body, timeout=timeout)

    def research(self, id: str, body: "T.KbResearchRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbResearchResponse":
        """The bounded loop over a base — framed, searched, read, checked once, asked when ambiguous — as one cited block for a model. The harness's loop (events kb-research.js), not a model's tool calls: a whole-document ask ("what is this about") reads the outline and the opening of each section; a focused one searches, reads the best passages grouped by document in page order, and — with `model` (TOKEN-GATED: the check runs on this gateway's own chat route) — asks that model once whether what was read answers it, then searches once more for what it says is missing. When the hits split evenly across documents and the question names none, the answer is `ask` (which document?) instead of a guess; call again with `answer` to go on, or `ask: false` to never pause. `attachment` is the block a client attaches before the question (`kind: prefetch`), `null` when nothing matched beyond the plain statement. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.research"], path={"id": id}, query=query, headers=headers, body=body, timeout=timeout)

    def graph(self, id: str, body: "T.KbGraphRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbGraphResponse":
        """What connects to a node — its neighbours up to `hops` away — or the path between two. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.graph"], path={"id": id}, query=query, headers=headers, body=body, timeout=timeout)

    def notes(self, id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbNotes":
        """The notes filed into a base. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.notes"], path={"id": id}, query=None, headers=headers, body=None, timeout=timeout)

    def note(self, id: str, body: "T.KbNoteRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbNoteResponse":
        """File a note — a fact, a summary, a correction — cited to passages; proposed until accepted. How a base improves over time. A note is indexed and searched as its own lane and shown with its status; `status: accepted` is honoured only from a caller with the token (the person, or a client acting for them) — any other caller's note is filed as `proposed`. Unknown cites are dropped. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.note"], path={"id": id}, query=query, headers=headers, body=body, timeout=timeout)

    def note_status(self, id: str, note: str, body: "T.KbNoteStatusRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbNoteResponse":
        """Accept a proposed note, withdraw it to proposed, or remove it. — Requires the gateway token. Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.noteStatus"], path={"id": id, "note": note}, query=query, headers=headers, body=body, timeout=timeout)

    def access(self, id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbAccessResponse":
        """Who may use a base — every agent, or the ones named. — Gateway 0.101.1+."""
        return self._rt.request(OPERATIONS["knowledge.access"], path={"id": id}, query=None, headers=headers, body=None, timeout=timeout)

    def set_access(self, id: str, body: "T.KbAccessRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbAccessResponse":
        """Grant a base to every agent or to the ones named — the owner's act. Grants (docs/knowledge-base.md §3, "knowledge is granted like skills"): a caller with the token or the extension's origin is the owner and reaches every base; any other caller names itself (`X-ChatPanel-Agent: claude`, or `?agent=`) — the gateway's own MCP server sends the connected client's name — and reaches the bases whose `access.agents` is `all` (the default) or names it. `GET /v1/kb` lists only those; a base not granted reads as 404 to that caller. — Requires the gateway token. Gateway 0.101.1+."""
        return self._rt.request(OPERATIONS["knowledge.setAccess"], path={"id": id}, query=query, headers=headers, body=body, timeout=timeout)

    def embed(self, id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.KbEmbedResponse":
        """Embed every passage that has no vector yet, and say where the embedder stands. — Gateway 0.101.0+."""
        return self._rt.request(OPERATIONS["knowledge.embed"], path={"id": id}, query=query, headers=headers, body=body, timeout=timeout)


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

    def quarantined(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Packages the admission scanner refused — what is on disk and deliberately not listed. A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of `GET /skills` entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0. — Gateway 0.48.0+."""
        return self._rt.request(OPERATIONS["skills.quarantined"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def list(self, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The skills on this machine — with a prompt character count, not the prompt. — Gateway 0.6.64+."""
        return self._rt.request(OPERATIONS["skills.list"], path={}, query=query, headers=headers, body=None, timeout=timeout)

    def get(self, skill_id: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """One skill, with its prompt. — Gateway 0.6.67+."""
        return self._rt.request(OPERATIONS["skills.get"], path={"skillId": skill_id}, query=query, headers=headers, body=None, timeout=timeout)

    def file(self, skill_id: str, path: str, query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """One reference file a packaged skill ships — what a model opens when the skill's prompt points at it. — Gateway 0.11.4+."""
        return self._rt.request(OPERATIONS["skills.file"], path={"skillId": skill_id, "path": path}, query=query, headers=headers, body=None, timeout=timeout)


class A2aApi:
    """Remote agents reached over the Agent2Agent protocol — discovery, messages, tasks."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def card(self, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Fetch a remote agent's card, revalidating the one already held. The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not. — Requires the gateway token. Gateway 0.53.0+."""
        return self._rt.request(OPERATIONS["a2a.card"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def message(self, body: "T.A2ASendRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.A2AResult":
        """Send a message to a remote agent and wait for the answer. The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting. — Requires the gateway token. Gateway 0.53.0+."""
        return self._rt.request(OPERATIONS["a2a.message"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def stream(self, body: "T.A2ASendRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame[Dict[str, Any]]]:
        """Send a message and stream the answer as it is produced. Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`. — Requires the gateway token. Gateway 0.53.0+."""
        return self._rt.stream(OPERATIONS["a2a.stream"], path={}, query=query, headers=headers, timeout=timeout)

    def task(self, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.A2AResult":
        """Poll or cancel a task on a remote agent. — Requires the gateway token. Gateway 0.53.0+."""
        return self._rt.request(OPERATIONS["a2a.task"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def agents(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Every remote agent this gateway has spoken to. What the audit lists — an agent a person connected is a host this machine talks to. — Requires the gateway token. Gateway 0.53.0+."""
        return self._rt.request(OPERATIONS["a2a.agents"], path={}, query=None, headers=headers, body=None, timeout=timeout)


class FusionsApi:
    """Several models as one — union, draft + target, fallback."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def list(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.FusionList":
        """Several models as one — the fusions this gateway has. Derived from state (the entity detector's union once a companion is ready, an engine drafting with a second model) and composed by the user (`POST /config { fusions }`, a chat fallback in order). A chat turn names a fallback as `model: "fusion:<id>"` and is routed to the first member that is up; `x-chatpanel-fusion` on the response says which. — Gateway 0.33.0+."""
        return self._rt.request(OPERATIONS["fusions.list"], path={}, query=None, headers=headers, body=None, timeout=timeout)


class BrowserApi:
    """A local client using the person's own browser through the ChatPanel extension — the browser holds a stream, a client's page-tool call is carried to it and its result back. Every action still passes the extension's site grant, its commit confirmation and its bot-check hand-off."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def status(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.BrowserStatus":
        """Is a browser connected, which one, and the page tool it offers. The spec and guidance are the extension's own — a client hands them to its model as they are. — Requires the gateway token. Gateway 0.59.0+."""
        return self._rt.request(OPERATIONS["browser.status"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def call(self, body: "T.BrowserCall", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.BrowserCallResult":
        """Run one page action in the person's browser and wait for its result. Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding. — Requires the gateway token. Gateway 0.59.0+."""
        return self._rt.request(OPERATIONS["browser.call"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def stream(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame["T.BrowserStreamEvent"]]:
        """The browser's end — `hello` with its session, then a `call` frame per action to run. — Requires the gateway token. Gateway 0.59.0+."""
        return self._rt.stream(OPERATIONS["browser.stream"], path={}, query=None, headers=headers, timeout=timeout)

    def announce(self, body: "T.BrowserAnnounce", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The browser says what it offers — its page tool spec and guidance. — Requires the gateway token. Gateway 0.59.0+."""
        return self._rt.request(OPERATIONS["browser.announce"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def result(self, body: "T.BrowserResult", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The browser answers a call it ran. Only the session the call went to may answer it. — Requires the gateway token. Gateway 0.59.0+."""
        return self._rt.request(OPERATIONS["browser.result"], path={}, query=query, headers=headers, body=body, timeout=timeout)


class LinkApi:
    """ChatPanel Link — the person's phones and the partner servers they chose reach this gateway end-to-end encrypted (Noise) through a relay or the person's own tunnel, with no port open. Pairing, listing and removing devices is the owner's, at their own computer — token only, and never over Link itself."""

    def __init__(self, rt: Runtime) -> None:
        self._rt = rt

    def status(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.LinkStatus":
        """The Link route and every paired device — phones and partner servers — with what each may reach. No keys, tokens or secrets. A partner device (gateway 0.89.0+) carries `kind: partner`, its `partner.name`, `scopes`, the `route` it was paired on and the `host` it connects to; a phone carries `kind: phone` and follows the gateway's route. Changing the route never moves a partner: one whose tunnel door shut with the route says `routeClosed`. — Requires the gateway token. Gateway 0.60.0+."""
        return self._rt.request(OPERATIONS["link.status"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def pair(self, body: "T.LinkPairRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.LinkPairResult":
        """Start a pairing — a phone's QR, or (with `kind partner`) a partner server's one-time code, shown and confirmed first. **A phone** (no `kind`, or `kind: phone`): a room on the route's relay and the QR the phone scans; the answer carries `uri`, `svg`, `expiresAt`, `room`. **A partner server** (`kind: partner`, gateway 0.89.0+): nothing is issued without the owner's yes. Without `confirm: true` the answer is `{ confirmed: false, preview }` — what the partner will be able to do (scopes, agents yes/no), the route and the one host its server will connect to — and nothing is created. With `confirm: true` the answer adds the `code` (`cplink1.…`, one use, 10 minutes), `room`, `route` and `host`. The route is the gateway's own unless `route` names another; a tunnel route reaches the tunnel door with no relay at all, and ChatPanel's hosted relay is used only for `link`. Refused with 403 from a device on Link: a paired device never pairs another. — Requires the gateway token. Gateway 0.60.0+."""
        return self._rt.request(OPERATIONS["link.pair"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def route(self, body: "T.LinkRouteRequest", query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> "T.LinkStatus":
        """How devices reach this computer — ChatPanel Link, the person's own relay, Tailscale or Cloudflare Tunnel. Checked, saved in the gateway's config and applied without a restart. Phones follow it; partner devices keep the route they were paired on, and the answer lists which is on which. — Requires the gateway token. Gateway 0.65.0+."""
        return self._rt.request(OPERATIONS["link.route"], path={}, query=query, headers=headers, body=body, timeout=timeout)

    def remove_device(self, device_id: str, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """Remove a paired device now — its relay room, its key and its open connection. — Requires the gateway token. Gateway 0.60.0+."""
        return self._rt.request(OPERATIONS["link.removeDevice"], path={"deviceId": device_id}, query=None, headers=headers, body=None, timeout=timeout)

    def approvals(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """What partners' agents are waiting on the owner for — each request a partner's coding agent made that the owner's settings do not already allow. A partner granted `agents` (gateway 0.90.0+) runs them as the owner's own turn does, and never answers their permission prompts: the request waits here for the OWNER (0.91.0+). Nothing that arrives over Link may list or answer these — 403 for a partner and a phone alike. In memory only. — Requires the gateway token. Gateway 0.91.0+."""
        return self._rt.request(OPERATIONS["link.approvals"], path={}, query=None, headers=headers, body=None, timeout=timeout)

    def approvals_stream(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Iterator[SseFrame[Dict[str, Any]]]:
        """The waiting requests as they change — one `approvals` event with the whole list on each change, and at connect. — Requires the gateway token. Gateway 0.91.0+."""
        return self._rt.stream(OPERATIONS["link.approvalsStream"], path={}, query=None, headers=headers, timeout=timeout)

    def answer_approval(self, approval_id: str, body: Dict[str, Any], query: Optional[Dict[str, Any]] = None, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """The owner's answer — once, this action for the rest of the conversation, everything in it, or no. No answer within the agent's own wait (10 minutes) is a no; revoking the partner denies what it waits on. — Requires the gateway token. Gateway 0.91.0+."""
        return self._rt.request(OPERATIONS["link.answerApproval"], path={"approvalId": approval_id}, query=query, headers=headers, body=body, timeout=timeout)

    def list_files(self, *, headers: Optional[Dict[str, str]] = None, timeout: Optional[float] = None) -> Dict[str, Any]:
        """A partner's own folder, from its side — every file it may hold there, with size and last change. Called BY A PARTNER over Link (`createLinkFetch`), granted `files` (0.92.0+; needs `agents`). The folder is the one the owner chose at pairing, where its agents work; a partner may hold its data (`data/`), skills (`.claude/skills/`, `.agents/skills/`), subagents (`.claude/agents/*.md`) and instructions (`CLAUDE.md`, `AGENTS.md`) — never what configures the agent. `GET /v1/link/files/data` lists one root. — Requires the gateway token. Gateway 0.92.0+."""
        return self._rt.request(OPERATIONS["link.listFiles"], path={}, query=None, headers=headers, body=None, timeout=timeout)


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
        self.threads = ThreadsApi(rt)
        self.prefs = PrefsApi(rt)
        self.teams = TeamsApi(rt)
        self.projects = ProjectsApi(rt)
        self.agents = AgentsApi(rt)
        self.capabilities = CapabilitiesApi(rt)
        self.runtime = RuntimeApi(rt)
        self.retrieval = RetrievalApi(rt)
        self.knowledge = KnowledgeApi(rt)
        self.engines = EnginesApi(rt)
        self.skills = SkillsApi(rt)
        self.a2a = A2aApi(rt)
        self.fusions = FusionsApi(rt)
        self.browser = BrowserApi(rt)
        self.link = LinkApi(rt)
