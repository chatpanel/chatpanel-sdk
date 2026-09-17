# ChatPanel.Sdk.Api.TeamsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**TeamsAnswer**](TeamsApi.md#teamsanswer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board. |
| [**TeamsAppendRunEvents**](TeamsApi.md#teamsappendrunevents) | **POST** /v1/teams/runs/{runId}/events | The running client appends events. |
| [**TeamsCheckpoint**](TeamsApi.md#teamscheckpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away. |
| [**TeamsClaim**](TeamsApi.md#teamsclaim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over. |
| [**TeamsCreateRun**](TeamsApi.md#teamscreaterun) | **POST** /v1/teams/runs | Open a run record. |
| [**TeamsDecide**](TeamsApi.md#teamsdecide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post. |
| [**TeamsDeleteRun**](TeamsApi.md#teamsdeleterun) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first. |
| [**TeamsGetRun**](TeamsApi.md#teamsgetrun) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events. |
| [**TeamsHandoff**](TeamsApi.md#teamshandoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model. |
| [**TeamsListRuns**](TeamsApi.md#teamslistruns) | **GET** /v1/teams/runs | The board — recent runs, newest first. |
| [**TeamsPost**](TeamsApi.md#teamspost) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread. |
| [**TeamsRemoveThread**](TeamsApi.md#teamsremovethread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board. |
| [**TeamsRunEvents**](TeamsApi.md#teamsrunevents) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live. |
| [**TeamsStopRun**](TeamsApi.md#teamsstoprun) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop. |

<a id="teamsanswer"></a>
# **TeamsAnswer**
> InlineObject TeamsAnswer (string runId, TeamsAnswerRequest teamsAnswerRequest)

A person answers an ask on the board.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **teamsAnswerRequest** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamsappendrunevents"></a>
# **TeamsAppendRunEvents**
> InlineObject TeamsAppendRunEvents (string runId, TeamsAppendRunEventsRequest teamsAppendRunEventsRequest)

The running client appends events.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamscheckpoint"></a>
# **TeamsCheckpoint**
> TeamsCheckpoint200Response TeamsCheckpoint (string runId)

What a client needs to resume a run whose client went away.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |

### Return type

[**TeamsCheckpoint200Response**](TeamsCheckpoint200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The checkpoint. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamsclaim"></a>
# **TeamsClaim**
> InlineObject TeamsClaim (string runId, TeamsClaimRequest teamsClaimRequest)

A client takes a stopped or stale run over.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **teamsClaimRequest** | [**TeamsClaimRequest**](TeamsClaimRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamscreaterun"></a>
# **TeamsCreateRun**
> InlineObject TeamsCreateRun (TeamRunCreate teamRunCreate)

Open a run record.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **teamRunCreate** | [**TeamRunCreate**](TeamRunCreate.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamsdecide"></a>
# **TeamsDecide**
> InlineObject TeamsDecide (string runId, TeamsDecideRequest teamsDecideRequest)

Approve or reject a post.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **teamsDecideRequest** | [**TeamsDecideRequest**](TeamsDecideRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamsdeleterun"></a>
# **TeamsDeleteRun**
> PrefsDelete200Response TeamsDeleteRun (string runId)

Remove a run; a live one is stopped first.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Whether the record existed. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamsgetrun"></a>
# **TeamsGetRun**
> InlineObject TeamsGetRun (string runId, bool events = null)

One run, optionally with its events.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **events** | **bool** |  | [optional]  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamshandoff"></a>
# **TeamsHandoff**
> InlineObject TeamsHandoff (string runId, TeamsHandoffRequest teamsHandoffRequest)

Continue a task on another model.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **teamsHandoffRequest** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamslistruns"></a>
# **TeamsListRuns**
> TeamsListRuns200Response TeamsListRuns (int limit = null, string team = null)

The board — recent runs, newest first.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **limit** | **int** |  | [optional] [default to 50] |
| **team** | **string** |  | [optional]  |

### Return type

[**TeamsListRuns200Response**](TeamsListRuns200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Runs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamspost"></a>
# **TeamsPost**
> InlineObject TeamsPost (string runId, TeamsPostRequest teamsPostRequest)

Post a note to a thread.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **teamsPostRequest** | [**TeamsPostRequest**](TeamsPostRequest.md) |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamsremovethread"></a>
# **TeamsRemoveThread**
> InlineObject TeamsRemoveThread (string runId, string threadId)

A person removes a thread from the board.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **threadId** | **string** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamsrunevents"></a>
# **TeamsRunEvents**
> string TeamsRunEvents (string runId, int after = null)

Tail a run — the record first, replay from `after`, then live.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |
| **after** | **int** | Replay events with seq greater than this; absent means from the start. | [optional]  |

### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;{ seq, type, at, payload }&#x60; frames; the first is &#x60;hello&#x60; with the run. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="teamsstoprun"></a>
# **TeamsStopRun**
> InlineObject TeamsStopRun (string runId)

Ask the running client to stop.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **runId** | **string** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The run as it now stands. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

