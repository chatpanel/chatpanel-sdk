# \AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agents_export_def**](AgentsApi.md#agents_export_def) | **POST** /agent-defs/export | Write an agent definition into another tool's folder.
[**agents_export_plan**](AgentsApi.md#agents_export_plan) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it.
[**agents_get_def**](AgentsApi.md#agents_get_def) | **GET** /agent-defs/{agentId} | One agent definition, prompt included.
[**agents_list_defs**](AgentsApi.md#agents_list_defs) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one.
[**agents_rate**](AgentsApi.md#agents_rate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent's work on a run, task or job.
[**agents_scorecard**](AgentsApi.md#agents_scorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent's attested scorecard.
[**agents_scorecards**](AgentsApi.md#agents_scorecards) | **GET** /v1/agents/scorecards | Every agent's scorecard.



## agents_export_def

> models::AgentsExportDef200Response agents_export_def(agent_export_request)
Write an agent definition into another tool's folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**agent_export_request** | [**AgentExportRequest**](AgentExportRequest.md) |  | [required] |

### Return type

[**models::AgentsExportDef200Response**](agents_exportDef_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## agents_export_plan

> models::AgentExportPlan agents_export_plan(agent_export_request)
What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \"show me what you are about to do to my Claude Code directory\" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**agent_export_request** | [**AgentExportRequest**](AgentExportRequest.md) |  | [required] |

### Return type

[**models::AgentExportPlan**](AgentExportPlan.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## agents_get_def

> models::AgentsGetDef200Response agents_get_def(agent_id, workdir)
One agent definition, prompt included.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**agent_id** | **String** | One path segment; slashes and `..` are refused. | [required] |
**workdir** | Option<**String**> |  |  |

### Return type

[**models::AgentsGetDef200Response**](agents_getDef_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## agents_list_defs

> models::AgentsListDefs200Response agents_list_defs(workdir, dir)
The agent definitions on this machine, from every tool that writes one.

`.claude/agents/_*.md`, `.codex/agents/_*.toml`, `~/.chatpanel/agents/_*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**workdir** | Option<**String**> | Also read this project's own agent folders, ahead of the home ones. |  |
**dir** | Option<**String**> | An extra absolute folder to scan. Repeatable. |  |

### Return type

[**models::AgentsListDefs200Response**](agents_listDefs_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## agents_rate

> std::collections::HashMap<String, serde_json::Value> agents_rate(agent_id, agents_rate_request)
A person rates the agent's work on a run, task or job.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**agent_id** | **String** |  | [required] |
**agents_rate_request** | [**AgentsRateRequest**](AgentsRateRequest.md) |  | [required] |

### Return type

[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## agents_scorecard

> std::collections::HashMap<String, serde_json::Value> agents_scorecard(agent_id)
One agent's attested scorecard.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**agent_id** | **String** |  | [required] |

### Return type

[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## agents_scorecards

> models::AgentsScorecards200Response agents_scorecards()
Every agent's scorecard.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::AgentsScorecards200Response**](agents_scorecards_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

