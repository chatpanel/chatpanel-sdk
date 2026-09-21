# chatpanel.api.ChatApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatCompletions**](ChatApi.md#chatcompletions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible).


# **chatCompletions**
> ChatCompletion chatCompletions(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun)

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace.  **Permission prompts (gateway 0.25.0+).** List a function tool named `permission_prompt` to say your client can answer an agent's \"may I run this?\" — the gateway strips it from what the agent sees and lets the agent ask instead of denying headlessly. The question arrives as a `tool_calls` stop on that tool, its arguments `{ tool, input, description, path, rules }`; answer with a `tool` message whose content is the JSON `{ \"behavior\": \"allow\" | \"deny\", \"scope\": \"once\" | \"chat\", \"message\"?: string }`. Anything else is a deny.  **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (`codex`, `claude`, `opencode`, … — `provider_type: agent` in `GET /v1/models`) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** `{ type: 'auth', code: 'agent_lane_token_required' }`. The SDKs surface that as `ForbiddenError` with `status` 401. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getChatApi();
final ChatCompletionRequest chatCompletionRequest = ; // ChatCompletionRequest | 
final String xChatPanelRedaction = xChatPanelRedaction_example; // String | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace.
final String xChatPanelRun = xChatPanelRun_example; // String | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token.

try {
    final response = api.chatCompletions(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ChatApi->chatCompletions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md)|  | 
 **xChatPanelRedaction** | **String**| Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | [optional] 
 **xChatPanelRun** | **String**| A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | [optional] 

### Return type

[**ChatCompletion**](ChatCompletion.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

