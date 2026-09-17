# ChatPanel.Sdk.Api.AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AgentsRate**](AgentsApi.md#agentsrate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**AgentsScorecard**](AgentsApi.md#agentsscorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**AgentsScorecards**](AgentsApi.md#agentsscorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |

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

