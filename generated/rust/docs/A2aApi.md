# \A2aApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**a2a_agents**](A2aApi.md#a2a_agents) | **GET** /a2a/agents | Every remote agent this gateway has spoken to.
[**a2a_card**](A2aApi.md#a2a_card) | **POST** /a2a/card | Fetch a remote agent's card, revalidating the one already held.
[**a2a_message**](A2aApi.md#a2a_message) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer.
[**a2a_stream**](A2aApi.md#a2a_stream) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced.
[**a2a_task**](A2aApi.md#a2a_task) | **POST** /a2a/task | Poll or cancel a task on a remote agent.



## a2a_agents

> models::A2aAgents200Response a2a_agents()
Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::A2aAgents200Response**](a2a_agents_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## a2a_card

> models::A2aCard200Response a2a_card(a2a_card_request)
Fetch a remote agent's card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**a2a_card_request** | [**A2aCardRequest**](A2aCardRequest.md) |  | [required] |

### Return type

[**models::A2aCard200Response**](a2a_card_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## a2a_message

> models::A2AResult a2a_message(a2_a_send_request)
Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**a2_a_send_request** | [**A2ASendRequest**](A2ASendRequest.md) |  | [required] |

### Return type

[**models::A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## a2a_stream

> String a2a_stream(a2_a_send_request)
Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**a2_a_send_request** | [**A2ASendRequest**](A2ASendRequest.md) |  | [required] |

### Return type

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## a2a_task

> models::A2AResult a2a_task(a2a_task_request)
Poll or cancel a task on a remote agent.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**a2a_task_request** | [**A2aTaskRequest**](A2aTaskRequest.md) |  | [required] |

### Return type

[**models::A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

