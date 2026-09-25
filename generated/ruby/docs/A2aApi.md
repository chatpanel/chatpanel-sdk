# ChatPanel::A2aApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**a2a_agents**](A2aApi.md#a2a_agents) | **GET** /a2a/agents | Every remote agent this gateway has spoken to. |
| [**a2a_card**](A2aApi.md#a2a_card) | **POST** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held. |
| [**a2a_message**](A2aApi.md#a2a_message) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer. |
| [**a2a_stream**](A2aApi.md#a2a_stream) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced. |
| [**a2a_task**](A2aApi.md#a2a_task) | **POST** /a2a/task | Poll or cancel a task on a remote agent. |


## a2a_agents

> <A2aAgents200Response> a2a_agents

Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.

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

api_instance = ChatPanel::A2aApi.new

begin
  # Every remote agent this gateway has spoken to.
  result = api_instance.a2a_agents
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_agents: #{e}"
end
```

#### Using the a2a_agents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<A2aAgents200Response>, Integer, Hash)> a2a_agents_with_http_info

```ruby
begin
  # Every remote agent this gateway has spoken to.
  data, status_code, headers = api_instance.a2a_agents_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <A2aAgents200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_agents_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**A2aAgents200Response**](A2aAgents200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## a2a_card

> <A2aCard200Response> a2a_card(a2a_card_request)

Fetch a remote agent's card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.

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

api_instance = ChatPanel::A2aApi.new
a2a_card_request = ChatPanel::A2aCardRequest.new({url: 'url_example'}) # A2aCardRequest | 

begin
  # Fetch a remote agent's card, revalidating the one already held.
  result = api_instance.a2a_card(a2a_card_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_card: #{e}"
end
```

#### Using the a2a_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<A2aCard200Response>, Integer, Hash)> a2a_card_with_http_info(a2a_card_request)

```ruby
begin
  # Fetch a remote agent's card, revalidating the one already held.
  data, status_code, headers = api_instance.a2a_card_with_http_info(a2a_card_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <A2aCard200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **a2a_card_request** | [**A2aCardRequest**](A2aCardRequest.md) |  |  |

### Return type

[**A2aCard200Response**](A2aCard200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## a2a_message

> <A2AResult> a2a_message(a2_a_send_request)

Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.

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

api_instance = ChatPanel::A2aApi.new
a2_a_send_request = ChatPanel::A2ASendRequest.new # A2ASendRequest | 

begin
  # Send a message to a remote agent and wait for the answer.
  result = api_instance.a2a_message(a2_a_send_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_message: #{e}"
end
```

#### Using the a2a_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<A2AResult>, Integer, Hash)> a2a_message_with_http_info(a2_a_send_request)

```ruby
begin
  # Send a message to a remote agent and wait for the answer.
  data, status_code, headers = api_instance.a2a_message_with_http_info(a2_a_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <A2AResult>
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **a2_a_send_request** | [**A2ASendRequest**](A2ASendRequest.md) |  |  |

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## a2a_stream

> String a2a_stream(a2_a_send_request)

Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`.

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

api_instance = ChatPanel::A2aApi.new
a2_a_send_request = ChatPanel::A2ASendRequest.new # A2ASendRequest | 

begin
  # Send a message and stream the answer as it is produced.
  result = api_instance.a2a_stream(a2_a_send_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_stream: #{e}"
end
```

#### Using the a2a_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> a2a_stream_with_http_info(a2_a_send_request)

```ruby
begin
  # Send a message and stream the answer as it is produced.
  data, status_code, headers = api_instance.a2a_stream_with_http_info(a2_a_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **a2_a_send_request** | [**A2ASendRequest**](A2ASendRequest.md) |  |  |

### Return type

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/event-stream, application/json


## a2a_task

> <A2AResult> a2a_task(a2a_task_request)

Poll or cancel a task on a remote agent.

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

api_instance = ChatPanel::A2aApi.new
a2a_task_request = ChatPanel::A2aTaskRequest.new({id: 'id_example'}) # A2aTaskRequest | 

begin
  # Poll or cancel a task on a remote agent.
  result = api_instance.a2a_task(a2a_task_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_task: #{e}"
end
```

#### Using the a2a_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<A2AResult>, Integer, Hash)> a2a_task_with_http_info(a2a_task_request)

```ruby
begin
  # Poll or cancel a task on a remote agent.
  data, status_code, headers = api_instance.a2a_task_with_http_info(a2a_task_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <A2AResult>
rescue ChatPanel::ApiError => e
  puts "Error when calling A2aApi->a2a_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **a2a_task_request** | [**A2aTaskRequest**](A2aTaskRequest.md) |  |  |

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

