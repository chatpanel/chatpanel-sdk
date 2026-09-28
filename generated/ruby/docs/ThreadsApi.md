# ChatPanel::ThreadsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**threads_send**](ThreadsApi.md#threads_send) | **POST** /v1/threads/send | Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat. |


## threads_send

> <ThreadsSend200Response> threads_send(threads_send_request)

Ask one of the person's chats and get its answer; the exchange is added to that chat.

The chat's own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; `dryRun` returns the chat's title and model for that question without running anything.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure API key authorization: tokenHeader
  config.api_key['X-ChatPanel-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-ChatPanel-Token'] = 'Bearer'

  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ThreadsApi.new
threads_send_request = ChatPanel::ThreadsSendRequest.new({to: 'to_example', message: 'message_example'}) # ThreadsSendRequest | 

begin
  # Ask one of the person's chats and get its answer; the exchange is added to that chat.
  result = api_instance.threads_send(threads_send_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ThreadsApi->threads_send: #{e}"
end
```

#### Using the threads_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreadsSend200Response>, Integer, Hash)> threads_send_with_http_info(threads_send_request)

```ruby
begin
  # Ask one of the person's chats and get its answer; the exchange is added to that chat.
  data, status_code, headers = api_instance.threads_send_with_http_info(threads_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreadsSend200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling ThreadsApi->threads_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **threads_send_request** | [**ThreadsSendRequest**](ThreadsSendRequest.md) |  |  |

### Return type

[**ThreadsSend200Response**](ThreadsSend200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

