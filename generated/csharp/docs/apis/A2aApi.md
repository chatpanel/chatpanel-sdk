# ChatPanel.Sdk.Api.A2aApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**A2aAgents**](A2aApi.md#a2aagents) | **GET** /a2a/agents | Every remote agent this gateway has spoken to. |
| [**A2aCard**](A2aApi.md#a2acard) | **POST** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held. |
| [**A2aMessage**](A2aApi.md#a2amessage) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer. |
| [**A2aStream**](A2aApi.md#a2astream) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced. |
| [**A2aTask**](A2aApi.md#a2atask) | **POST** /a2a/task | Poll or cancel a task on a remote agent. |

<a id="a2aagents"></a>
# **A2aAgents**
> A2aAgents200Response A2aAgents ()

Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.


### Parameters
This endpoint does not need any parameter.
### Return type

[**A2aAgents200Response**](A2aAgents200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The agents. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="a2acard"></a>
# **A2aCard**
> A2aCard200Response A2aCard (A2aCardRequest a2aCardRequest)

Fetch a remote agent's card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **a2aCardRequest** | [**A2aCardRequest**](A2aCardRequest.md) |  |  |

### Return type

[**A2aCard200Response**](A2aCard200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="a2amessage"></a>
# **A2aMessage**
> A2AResult A2aMessage (A2ASendRequest a2ASendRequest)

Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md) |  |  |

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The answer. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="a2astream"></a>
# **A2aStream**
> string A2aStream (A2ASendRequest a2ASendRequest)

Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md) |  |  |

### Return type

**string**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/event-stream, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An event stream. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="a2atask"></a>
# **A2aTask**
> A2AResult A2aTask (A2aTaskRequest a2aTaskRequest)

Poll or cancel a task on a remote agent.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **a2aTaskRequest** | [**A2aTaskRequest**](A2aTaskRequest.md) |  |  |

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The task. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

