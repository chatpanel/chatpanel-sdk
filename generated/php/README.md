# chatpanel-sdk

The ChatPanel gateway runs on the user's machine (loopback only, port 4320 by default). It
redacts personal data before a model sees it, routes model traffic, and holds the user's
searchable history, durable memory, shared preferences and the team/project run boards.

**It only answers on loopback.** A client on another host cannot reach it; an SDK refuses a
non-loopback base URL unless the integrator opts in and uses TLS.

**Two trust levels.** The `/v1` data plane is open to any local process — that is the
product. Writes that change what every client sees (remember, forget, ingest) and anything
admin-shaped require the per-install token the gateway writes to
`~/.chatpanel/gateway-token` (mode 0600), or a copy obtained by pairing (`POST /pair` with
a one-time code from `chatpanel-gateway pair`). `POST /whoami` says which trust you have.

**Errors** are `{ error: { message, type } }` (or `{ error: \"text\" }` on the oldest routes)
with the HTTP status. `type` is a stable machine word: `not_found`, `invalid_request`,
`unknown_endpoint`, `unavailable`, `bridge_unreachable`, `no_bridge`, `redact_error`,
`search_error`, `memory_error`, `team_error`, `ingest_error`, `prefs_error`.


For more information, please visit [https://chatpanel.net](https://chatpanel.net).

## Installation & Usage

### Requirements

PHP 8.1 and later.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/chatpanel/chatpanel-sdk.git"
    }
  ],
  "require": {
    "chatpanel/chatpanel-sdk": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/chatpanel-sdk/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$agent_id = 'agent_id_example'; // string
$agents_rate_request = new \ChatPanelSdk\Model\AgentsRateRequest(); // \ChatPanelSdk\Model\AgentsRateRequest

try {
    $result = $apiInstance->agentsRate($agent_id, $agents_rate_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->agentsRate: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *http://127.0.0.1:4320*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AgentsApi* | [**agentsRate**](docs/Api/AgentsApi.md#agentsrate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job.
*AgentsApi* | [**agentsScorecard**](docs/Api/AgentsApi.md#agentsscorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard.
*AgentsApi* | [**agentsScorecards**](docs/Api/AgentsApi.md#agentsscorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard.
*CapabilitiesApi* | [**capabilitiesDetect**](docs/Api/CapabilitiesApi.md#capabilitiesdetect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores.
*CapabilitiesApi* | [**capabilitiesList**](docs/Api/CapabilitiesApi.md#capabilitieslist) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state.
*ChatApi* | [**chatCompletions**](docs/Api/ChatApi.md#chatcompletions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible).
*EnginesApi* | [**enginesAppendEntry**](docs/Api/EnginesApi.md#enginesappendentry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine.
*EnginesApi* | [**enginesCard**](docs/Api/EnginesApi.md#enginescard) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries.
*EnginesApi* | [**enginesList**](docs/Api/EnginesApi.md#engineslist) | **GET** /v1/engines | Every engine&#39;s card.
*GatewayApi* | [**gatewayAudit**](docs/Api/GatewayApi.md#gatewayaudit) | **GET** /audit | The egress audit — which hosts this gateway has contacted and which its config allows.
*GatewayApi* | [**gatewayHealth**](docs/Api/GatewayApi.md#gatewayhealth) | **GET** /health | Liveness, version and capabilities.
*GatewayApi* | [**gatewayPair**](docs/Api/GatewayApi.md#gatewaypair) | **POST** /pair | Exchange a pairing code for the gateway token.
*GatewayApi* | [**gatewayPairCode**](docs/Api/GatewayApi.md#gatewaypaircode) | **POST** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts).
*GatewayApi* | [**gatewayWhoami**](docs/Api/GatewayApi.md#gatewaywhoami) | **POST** /whoami | What the gateway makes of this caller.
*HistoryApi* | [**historyGet**](docs/Api/HistoryApi.md#historyget) | **GET** /v1/history/get | One full warm record, optionally paged by characters.
*HistoryApi* | [**historyIngest**](docs/Api/HistoryApi.md#historyingest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index.
*HistoryApi* | [**historyList**](docs/Api/HistoryApi.md#historylist) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies.
*HistoryApi* | [**historyPutRecords**](docs/Api/HistoryApi.md#historyputrecords) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself.
*HistoryApi* | [**historyRecords**](docs/Api/HistoryApi.md#historyrecords) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
*HistoryApi* | [**historyRelated**](docs/Api/HistoryApi.md#historyrelated) | **GET** /v1/history/related | The records most connected to one record.
*HistoryApi* | [**historySearch**](docs/Api/HistoryApi.md#historysearch) | **POST** /v1/history/search | One keyword query over the warm index.
*HistoryApi* | [**historySmartSearch**](docs/Api/HistoryApi.md#historysmartsearch) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead.
*HistoryApi* | [**historyStatus**](docs/Api/HistoryApi.md#historystatus) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0).
*HistoryApi* | [**historyStream**](docs/Api/HistoryApi.md#historystream) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change.
*MemoryApi* | [**memoryForget**](docs/Api/MemoryApi.md#memoryforget) | **POST** /v1/memory/forget | Forget memories matching an id or words.
*MemoryApi* | [**memoryList**](docs/Api/MemoryApi.md#memorylist) | **GET** /v1/memory/list | Every memory.
*MemoryApi* | [**memoryRecall**](docs/Api/MemoryApi.md#memoryrecall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them.
*MemoryApi* | [**memoryRemember**](docs/Api/MemoryApi.md#memoryremember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded.
*MemoryApi* | [**memorySync**](docs/Api/MemoryApi.md#memorysync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set.
*ModelsApi* | [**modelsList**](docs/Api/ModelsApi.md#modelslist) | **GET** /v1/models | Every model the gateway can route to.
*PrefsApi* | [**prefsDelete**](docs/Api/PrefsApi.md#prefsdelete) | **DELETE** /v1/prefs | Remove one section.
*PrefsApi* | [**prefsEvents**](docs/Api/PrefsApi.md#prefsevents) | **GET** /v1/prefs/events | Live — which sections another client wrote.
*PrefsApi* | [**prefsGet**](docs/Api/PrefsApi.md#prefsget) | **GET** /v1/prefs | The shared sections, or only their stamps.
*PrefsApi* | [**prefsPut**](docs/Api/PrefsApi.md#prefsput) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp.
*ProjectsApi* | [**projectsAppendEvents**](docs/Api/ProjectsApi.md#projectsappendevents) | **POST** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report).
*ProjectsApi* | [**projectsApplications**](docs/Api/ProjectsApi.md#projectsapplications) | **GET** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call.
*ProjectsApi* | [**projectsCreate**](docs/Api/ProjectsApi.md#projectscreate) | **POST** /v1/projects | Open a record (idempotent) or update the page.
*ProjectsApi* | [**projectsDelete**](docs/Api/ProjectsApi.md#projectsdelete) | **DELETE** /v1/projects/{projectId} | Remove a project record.
*ProjectsApi* | [**projectsEvents**](docs/Api/ProjectsApi.md#projectsevents) | **GET** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live.
*ProjectsApi* | [**projectsGet**](docs/Api/ProjectsApi.md#projectsget) | **GET** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report.
*ProjectsApi* | [**projectsJobBoard**](docs/Api/ProjectsApi.md#projectsjobboard) | **GET** /v1/projects/jobs | Every open posting across projects.
*ProjectsApi* | [**projectsList**](docs/Api/ProjectsApi.md#projectslist) | **GET** /v1/projects | Projects, newest activity first, jobs counted.
*ProjectsApi* | [**projectsPatchJob**](docs/Api/ProjectsApi.md#projectspatchjob) | **POST** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine.
*ProjectsApi* | [**projectsPostJob**](docs/Api/ProjectsApi.md#projectspostjob) | **POST** /v1/projects/{projectId}/jobs | Post a job.
*ProjectsApi* | [**projectsRecruit**](docs/Api/ProjectsApi.md#projectsrecruit) | **POST** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.
*RedactionApi* | [**redactionPreview**](docs/Api/RedactionApi.md#redactionpreview) | **POST** /redact | What the model would receive if this text were sent now.
*RetrievalApi* | [**retrievalExtract**](docs/Api/RetrievalApi.md#retrievalextract) | **POST** /v1/extract | A document&#39;s pages from its bytes — a PDF, a Word file, a sheet, a deck — parsed once, paged by hash.
*RetrievalApi* | [**retrievalRead**](docs/Api/RetrievalApi.md#retrievalread) | **POST** /v1/read | Read one public page as LLM-ready Markdown, cited where it landed, with its sections.
*RetrievalApi* | [**retrievalReadAlias**](docs/Api/RetrievalApi.md#retrievalreadalias) | **GET** /v1/read/{url} | The r.jina.ai-shaped alias — &#x60;GET /v1/read/https://…&#x60; — for clients that already speak it.
*RetrievalApi* | [**retrievalSearch**](docs/Api/RetrievalApi.md#retrievalsearch) | **POST** /v1/search | Search the web through the provider this gateway is configured with; optionally read the top results in the same request.
*RetrievalApi* | [**retrievalSearchAlias**](docs/Api/RetrievalApi.md#retrievalsearchalias) | **GET** /v1/search/{q} | The s.jina.ai-shaped alias — &#x60;GET /v1/search/&lt;query&gt;&#x60; — the top results WITH their content.
*SkillsApi* | [**skillsGet**](docs/Api/SkillsApi.md#skillsget) | **GET** /skills/{skillId} | One skill, with its prompt.
*SkillsApi* | [**skillsList**](docs/Api/SkillsApi.md#skillslist) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt.
*TeamsApi* | [**teamsAnswer**](docs/Api/TeamsApi.md#teamsanswer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board.
*TeamsApi* | [**teamsAppendRunEvents**](docs/Api/TeamsApi.md#teamsappendrunevents) | **POST** /v1/teams/runs/{runId}/events | The running client appends events.
*TeamsApi* | [**teamsCheckpoint**](docs/Api/TeamsApi.md#teamscheckpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away.
*TeamsApi* | [**teamsClaim**](docs/Api/TeamsApi.md#teamsclaim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over.
*TeamsApi* | [**teamsCreateRun**](docs/Api/TeamsApi.md#teamscreaterun) | **POST** /v1/teams/runs | Open a run record.
*TeamsApi* | [**teamsDecide**](docs/Api/TeamsApi.md#teamsdecide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post.
*TeamsApi* | [**teamsDeleteRun**](docs/Api/TeamsApi.md#teamsdeleterun) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first.
*TeamsApi* | [**teamsGetRun**](docs/Api/TeamsApi.md#teamsgetrun) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events.
*TeamsApi* | [**teamsHandoff**](docs/Api/TeamsApi.md#teamshandoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model.
*TeamsApi* | [**teamsListRuns**](docs/Api/TeamsApi.md#teamslistruns) | **GET** /v1/teams/runs | The board — recent runs, newest first.
*TeamsApi* | [**teamsPost**](docs/Api/TeamsApi.md#teamspost) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread.
*TeamsApi* | [**teamsRemoveThread**](docs/Api/TeamsApi.md#teamsremovethread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board.
*TeamsApi* | [**teamsRunEvents**](docs/Api/TeamsApi.md#teamsrunevents) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live.
*TeamsApi* | [**teamsStopRun**](docs/Api/TeamsApi.md#teamsstoprun) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop.

## Models

- [AgentsRateRequest](docs/Model/AgentsRateRequest.md)
- [AgentsScorecards200Response](docs/Model/AgentsScorecards200Response.md)
- [Audit](docs/Model/Audit.md)
- [CapabilitiesDocument](docs/Model/CapabilitiesDocument.md)
- [CapabilitiesDocumentServer](docs/Model/CapabilitiesDocumentServer.md)
- [Capability](docs/Model/Capability.md)
- [CapabilityStats](docs/Model/CapabilityStats.md)
- [ChatCompletion](docs/Model/ChatCompletion.md)
- [ChatCompletionChoicesInner](docs/Model/ChatCompletionChoicesInner.md)
- [ChatCompletionChunk](docs/Model/ChatCompletionChunk.md)
- [ChatCompletionChunkChoicesInner](docs/Model/ChatCompletionChunkChoicesInner.md)
- [ChatCompletionRequest](docs/Model/ChatCompletionRequest.md)
- [ChatContentPart](docs/Model/ChatContentPart.md)
- [ChatMessage](docs/Model/ChatMessage.md)
- [ChatMessageContent](docs/Model/ChatMessageContent.md)
- [DetectRequest](docs/Model/DetectRequest.md)
- [DetectResponse](docs/Model/DetectResponse.md)
- [DetectedEntity](docs/Model/DetectedEntity.md)
- [EnginesList200Response](docs/Model/EnginesList200Response.md)
- [ErrorResponse](docs/Model/ErrorResponse.md)
- [ErrorResponseError](docs/Model/ErrorResponseError.md)
- [ErrorResponseErrorOneOf](docs/Model/ErrorResponseErrorOneOf.md)
- [ExtractRequest](docs/Model/ExtractRequest.md)
- [ExtractResponse](docs/Model/ExtractResponse.md)
- [GatewayPairRequest](docs/Model/GatewayPairRequest.md)
- [Health](docs/Model/Health.md)
- [HistoryGet200Response](docs/Model/HistoryGet200Response.md)
- [HistoryIngest200Response](docs/Model/HistoryIngest200Response.md)
- [HistoryItem](docs/Model/HistoryItem.md)
- [HistoryPage](docs/Model/HistoryPage.md)
- [HistoryRecord](docs/Model/HistoryRecord.md)
- [HistoryRelated200Response](docs/Model/HistoryRelated200Response.md)
- [HistoryStatus](docs/Model/HistoryStatus.md)
- [HistoryStatusLossless](docs/Model/HistoryStatusLossless.md)
- [HistoryStreamEvent](docs/Model/HistoryStreamEvent.md)
- [IngestRequest](docs/Model/IngestRequest.md)
- [IngestRequestUpsertsInner](docs/Model/IngestRequestUpsertsInner.md)
- [InlineObject](docs/Model/InlineObject.md)
- [InlineObject1](docs/Model/InlineObject1.md)
- [Memory](docs/Model/Memory.md)
- [MemoryForget200Response](docs/Model/MemoryForget200Response.md)
- [MemoryForgetRequest](docs/Model/MemoryForgetRequest.md)
- [MemoryList](docs/Model/MemoryList.md)
- [MemorySource](docs/Model/MemorySource.md)
- [MemorySyncRequest](docs/Model/MemorySyncRequest.md)
- [MemorySyncResponse](docs/Model/MemorySyncResponse.md)
- [Model](docs/Model/Model.md)
- [ModelList](docs/Model/ModelList.md)
- [Paired](docs/Model/Paired.md)
- [PairingCode](docs/Model/PairingCode.md)
- [PrefSection](docs/Model/PrefSection.md)
- [Prefs](docs/Model/Prefs.md)
- [PrefsDelete200Response](docs/Model/PrefsDelete200Response.md)
- [PrefsEvent](docs/Model/PrefsEvent.md)
- [PrefsWrite](docs/Model/PrefsWrite.md)
- [PrefsWriteResult](docs/Model/PrefsWriteResult.md)
- [Project](docs/Model/Project.md)
- [ProjectsCreateRequest](docs/Model/ProjectsCreateRequest.md)
- [ProjectsJobBoard200Response](docs/Model/ProjectsJobBoard200Response.md)
- [ProjectsList200Response](docs/Model/ProjectsList200Response.md)
- [ProjectsPatchJobRequest](docs/Model/ProjectsPatchJobRequest.md)
- [ProjectsPostJobRequest](docs/Model/ProjectsPostJobRequest.md)
- [ProjectsRecruitRequest](docs/Model/ProjectsRecruitRequest.md)
- [PutRecordsRequest](docs/Model/PutRecordsRequest.md)
- [PutRecordsResponse](docs/Model/PutRecordsResponse.md)
- [ReadRequest](docs/Model/ReadRequest.md)
- [ReadResponse](docs/Model/ReadResponse.md)
- [ReadRestriction](docs/Model/ReadRestriction.md)
- [ReadSection](docs/Model/ReadSection.md)
- [RecallRequest](docs/Model/RecallRequest.md)
- [RecallResponse](docs/Model/RecallResponse.md)
- [RecordType](docs/Model/RecordType.md)
- [RecordsPage](docs/Model/RecordsPage.md)
- [RedactionPreview](docs/Model/RedactionPreview.md)
- [RedactionPreviewRequest](docs/Model/RedactionPreviewRequest.md)
- [RememberRequest](docs/Model/RememberRequest.md)
- [RememberResponse](docs/Model/RememberResponse.md)
- [RetrievalReadAlias200Response](docs/Model/RetrievalReadAlias200Response.md)
- [RetrievalSearchAlias200Response](docs/Model/RetrievalSearchAlias200Response.md)
- [RetrievalSearchAlias200ResponseDataInner](docs/Model/RetrievalSearchAlias200ResponseDataInner.md)
- [RunEvent](docs/Model/RunEvent.md)
- [SearchFilters](docs/Model/SearchFilters.md)
- [SearchHit](docs/Model/SearchHit.md)
- [SearchRequest](docs/Model/SearchRequest.md)
- [SearchResponse](docs/Model/SearchResponse.md)
- [Skill](docs/Model/Skill.md)
- [SkillsGet200Response](docs/Model/SkillsGet200Response.md)
- [SkillsList200Response](docs/Model/SkillsList200Response.md)
- [SmartSearchRequest](docs/Model/SmartSearchRequest.md)
- [SmartSearchResponse](docs/Model/SmartSearchResponse.md)
- [TeamRun](docs/Model/TeamRun.md)
- [TeamRunCreate](docs/Model/TeamRunCreate.md)
- [TeamsAnswerRequest](docs/Model/TeamsAnswerRequest.md)
- [TeamsAppendRunEventsRequest](docs/Model/TeamsAppendRunEventsRequest.md)
- [TeamsCheckpoint200Response](docs/Model/TeamsCheckpoint200Response.md)
- [TeamsClaimRequest](docs/Model/TeamsClaimRequest.md)
- [TeamsDecideRequest](docs/Model/TeamsDecideRequest.md)
- [TeamsHandoffRequest](docs/Model/TeamsHandoffRequest.md)
- [TeamsListRuns200Response](docs/Model/TeamsListRuns200Response.md)
- [TeamsPostRequest](docs/Model/TeamsPostRequest.md)
- [WebSearchRequest](docs/Model/WebSearchRequest.md)
- [WebSearchResponse](docs/Model/WebSearchResponse.md)
- [WebSearchResult](docs/Model/WebSearchResult.md)
- [WhoAmI](docs/Model/WhoAmI.md)

## Authorization

Authentication schemes defined for the API:
### gatewayToken

- **Type**: Bearer authentication

### tokenHeader

- **Type**: API key
- **API key parameter name**: X-ChatPanel-Token
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author



## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `0.15.0`
    - Generator version: `7.25.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
