# \AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agents_rate**](AgentsApi.md#agents_rate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent's work on a run, task or job.
[**agents_scorecard**](AgentsApi.md#agents_scorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent's attested scorecard.
[**agents_scorecards**](AgentsApi.md#agents_scorecards) | **GET** /v1/agents/scorecards | Every agent's scorecard.



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

