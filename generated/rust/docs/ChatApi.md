# \ChatApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chat_completions**](ChatApi.md#chat_completions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible).



## chat_completions

> models::ChatCompletion chat_completions(chat_completion_request, x_chat_panel_redaction, x_chat_panel_run)
One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**chat_completion_request** | [**ChatCompletionRequest**](ChatCompletionRequest.md) |  | [required] |
**x_chat_panel_redaction** | Option<**String**> | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. |  |
**x_chat_panel_run** | Option<**String**> | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. |  |

### Return type

[**models::ChatCompletion**](ChatCompletion.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

