# ChatPanel.Sdk.Api.AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AgentsExportDef**](AgentsApi.md#agentsexportdef) | **POST** /agent-defs/export | Write an agent definition into another tool&#39;s folder. |
| [**AgentsExportPlan**](AgentsApi.md#agentsexportplan) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it. |
| [**AgentsGetDef**](AgentsApi.md#agentsgetdef) | **GET** /agent-defs/{agentId} | One agent definition, prompt included. |
| [**AgentsListDefs**](AgentsApi.md#agentslistdefs) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one. |
| [**AgentsRate**](AgentsApi.md#agentsrate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**AgentsScorecard**](AgentsApi.md#agentsscorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**AgentsScorecards**](AgentsApi.md#agentsscorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |

<a id="agentsexportdef"></a>
# **AgentsExportDef**
> AgentsExportDef200Response AgentsExportDef (AgentExportRequest agentExportRequest)

Write an agent definition into another tool's folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md) |  |  |

### Return type

[**AgentsExportDef200Response**](AgentsExportDef200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Written. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="agentsexportplan"></a>
# **AgentsExportPlan**
> AgentExportPlan AgentsExportPlan (AgentExportRequest agentExportRequest)

What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \"show me what you are about to do to my Claude Code directory\" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md) |  |  |

### Return type

[**AgentExportPlan**](AgentExportPlan.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The plan. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="agentsgetdef"></a>
# **AgentsGetDef**
> AgentsGetDef200Response AgentsGetDef (string agentId, string workdir = null)

One agent definition, prompt included.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **agentId** | **string** | One path segment; slashes and &#x60;..&#x60; are refused. |  |
| **workdir** | **string** |  | [optional]  |

### Return type

[**AgentsGetDef200Response**](AgentsGetDef200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The definition. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="agentslistdefs"></a>
# **AgentsListDefs**
> AgentsListDefs200Response AgentsListDefs (string workdir = null, string dir = null)

The agent definitions on this machine, from every tool that writes one.

`.claude/agents/_*.md`, `.codex/agents/_*.toml`, `~/.chatpanel/agents/_*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **workdir** | **string** | Also read this project&#39;s own agent folders, ahead of the home ones. | [optional]  |
| **dir** | **string** | An extra absolute folder to scan. Repeatable. | [optional]  |

### Return type

[**AgentsListDefs200Response**](AgentsListDefs200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The definitions. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="agentsrate"></a>
# **AgentsRate**
> Dictionary&lt;string, Object&gt; AgentsRate (string agentId, AgentsRateRequest agentsRateRequest)

A person rates the agent's work on a run, task or job.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **agentId** | **string** |  |  |
| **agentsRateRequest** | [**AgentsRateRequest**](AgentsRateRequest.md) |  |  |

### Return type

**Dictionary<string, Object>**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The entry. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="agentsscorecard"></a>
# **AgentsScorecard**
> Dictionary&lt;string, Object&gt; AgentsScorecard (string agentId)

One agent's attested scorecard.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **agentId** | **string** |  |  |

### Return type

**Dictionary<string, Object>**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="agentsscorecards"></a>
# **AgentsScorecards**
> AgentsScorecards200Response AgentsScorecards ()

Every agent's scorecard.


### Parameters
This endpoint does not need any parameter.
### Return type

[**AgentsScorecards200Response**](AgentsScorecards200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Scorecards. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

