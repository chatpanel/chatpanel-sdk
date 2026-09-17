# ChatPanel.Sdk.Api.ChatApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ChatCompletions**](ChatApi.md#chatcompletions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible). |

<a id="chatcompletions"></a>
# **ChatCompletions**
> ChatCompletion ChatCompletions (ChatCompletionRequest chatCompletionRequest, string xChatPanelRedaction = null, string xChatPanelRun = null)

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md) |  |  |
| **xChatPanelRedaction** | **string** | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | [optional]  |
| **xChatPanelRun** | **string** | A team role&#39;s run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | [optional]  |

### Return type

[**ChatCompletion**](ChatCompletion.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/event-stream


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The completion, or a stream of chunks. |  -  |
| **4XX** | An error, in the gateway&#39;s words. |  -  |
| **5XX** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

