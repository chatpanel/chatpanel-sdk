# ChatPanelSdk\ChatApi

The OpenAI-compatible chat endpoint, redacted and routed by the gateway.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chatCompletions()**](ChatApi.md#chatCompletions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible). |


## `chatCompletions()`

```php
chatCompletions($chat_completion_request, $x_chat_panel_redaction, $x_chat_panel_run): \ChatPanelSdk\Model\ChatCompletion
```

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace.  **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (`codex`, `claude`, `opencode`, … — `provider_type: agent` in `GET /v1/models`) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** `{ type: 'auth', code: 'agent_lane_token_required' }`. The SDKs surface that as `ForbiddenError` with `status` 401.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ChatApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$chat_completion_request = new \ChatPanelSdk\Model\ChatCompletionRequest(); // \ChatPanelSdk\Model\ChatCompletionRequest
$x_chat_panel_redaction = 'x_chat_panel_redaction_example'; // string | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace.
$x_chat_panel_run = 'x_chat_panel_run_example'; // string | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token.

try {
    $result = $apiInstance->chatCompletions($chat_completion_request, $x_chat_panel_redaction, $x_chat_panel_run);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ChatApi->chatCompletions: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chat_completion_request** | [**\ChatPanelSdk\Model\ChatCompletionRequest**](../Model/ChatCompletionRequest.md)|  | |
| **x_chat_panel_redaction** | **string**| Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | [optional] |
| **x_chat_panel_run** | **string**| A team role&#39;s run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | [optional] |

### Return type

[**\ChatPanelSdk\Model\ChatCompletion**](../Model/ChatCompletion.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`, `text/event-stream`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
