# ChatPanel::ChatApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**chat_completions**](ChatApi.md#chat_completions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible). |


## chat_completions

> <ChatCompletion> chat_completions(chat_completion_request, opts)

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace.  **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (`codex`, `claude`, `opencode`, … — `provider_type: agent` in `GET /v1/models`) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** `{ type: 'auth', code: 'agent_lane_token_required' }`. The SDKs surface that as `ForbiddenError` with `status` 401. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ChatApi.new
chat_completion_request = ChatPanel::ChatCompletionRequest.new({model: 'model_example', messages: [ChatPanel::ChatMessage.new({role: 'system'})]}) # ChatCompletionRequest | 
opts = {
  x_chat_panel_redaction: 'false', # String | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace.
  x_chat_panel_run: 'x_chat_panel_run_example' # String | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token.
}

begin
  # One chat turn through the gateway (OpenAI-compatible).
  result = api_instance.chat_completions(chat_completion_request, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ChatApi->chat_completions: #{e}"
end
```

#### Using the chat_completions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChatCompletion>, Integer, Hash)> chat_completions_with_http_info(chat_completion_request, opts)

```ruby
begin
  # One chat turn through the gateway (OpenAI-compatible).
  data, status_code, headers = api_instance.chat_completions_with_http_info(chat_completion_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChatCompletion>
rescue ChatPanel::ApiError => e
  puts "Error when calling ChatApi->chat_completions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_completion_request** | [**ChatCompletionRequest**](ChatCompletionRequest.md) |  |  |
| **x_chat_panel_redaction** | **String** | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | [optional] |
| **x_chat_panel_run** | **String** | A team role&#39;s run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | [optional] |

### Return type

[**ChatCompletion**](ChatCompletion.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, text/event-stream

