# ChatPanel::MemoryApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**memory_forget**](MemoryApi.md#memory_forget) | **POST** /v1/memory/forget | Forget memories matching an id or words. |
| [**memory_list**](MemoryApi.md#memory_list) | **GET** /v1/memory/list | Every memory. |
| [**memory_recall**](MemoryApi.md#memory_recall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them. |
| [**memory_remember**](MemoryApi.md#memory_remember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded. |
| [**memory_sync**](MemoryApi.md#memory_sync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set. |


## memory_forget

> <MemoryForget200Response> memory_forget(memory_forget_request)

Forget memories matching an id or words.

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

api_instance = ChatPanel::MemoryApi.new
memory_forget_request = ChatPanel::MemoryForgetRequest.new({query: 'query_example'}) # MemoryForgetRequest | 

begin
  # Forget memories matching an id or words.
  result = api_instance.memory_forget(memory_forget_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_forget: #{e}"
end
```

#### Using the memory_forget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemoryForget200Response>, Integer, Hash)> memory_forget_with_http_info(memory_forget_request)

```ruby
begin
  # Forget memories matching an id or words.
  data, status_code, headers = api_instance.memory_forget_with_http_info(memory_forget_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemoryForget200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_forget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memory_forget_request** | [**MemoryForgetRequest**](MemoryForgetRequest.md) |  |  |

### Return type

[**MemoryForget200Response**](MemoryForget200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## memory_list

> <MemoryList> memory_list

Every memory.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::MemoryApi.new

begin
  # Every memory.
  result = api_instance.memory_list
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_list: #{e}"
end
```

#### Using the memory_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemoryList>, Integer, Hash)> memory_list_with_http_info

```ruby
begin
  # Every memory.
  data, status_code, headers = api_instance.memory_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemoryList>
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MemoryList**](MemoryList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## memory_recall

> <RecallResponse> memory_recall(recall_request)

The memories relevant to a text, and a prompt block that carries them.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::MemoryApi.new
recall_request = ChatPanel::RecallRequest.new({text: 'text_example'}) # RecallRequest | 

begin
  # The memories relevant to a text, and a prompt block that carries them.
  result = api_instance.memory_recall(recall_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_recall: #{e}"
end
```

#### Using the memory_recall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecallResponse>, Integer, Hash)> memory_recall_with_http_info(recall_request)

```ruby
begin
  # The memories relevant to a text, and a prompt block that carries them.
  data, status_code, headers = api_instance.memory_recall_with_http_info(recall_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecallResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_recall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recall_request** | [**RecallRequest**](RecallRequest.md) |  |  |

### Return type

[**RecallResponse**](RecallResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## memory_remember

> <RememberResponse> memory_remember(remember_request)

Save a durable fact. Never anonymous — `source` is recorded.

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

api_instance = ChatPanel::MemoryApi.new
remember_request = ChatPanel::RememberRequest.new({text: 'text_example'}) # RememberRequest | 

begin
  # Save a durable fact. Never anonymous — `source` is recorded.
  result = api_instance.memory_remember(remember_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_remember: #{e}"
end
```

#### Using the memory_remember_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RememberResponse>, Integer, Hash)> memory_remember_with_http_info(remember_request)

```ruby
begin
  # Save a durable fact. Never anonymous — `source` is recorded.
  data, status_code, headers = api_instance.memory_remember_with_http_info(remember_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RememberResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_remember_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remember_request** | [**RememberRequest**](RememberRequest.md) |  |  |

### Return type

[**RememberResponse**](RememberResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## memory_sync

> <MemorySyncResponse> memory_sync(memory_sync_request)

Two-way merge in one round trip — push what you have, receive the full set.

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

api_instance = ChatPanel::MemoryApi.new
memory_sync_request = ChatPanel::MemorySyncRequest.new # MemorySyncRequest | 

begin
  # Two-way merge in one round trip — push what you have, receive the full set.
  result = api_instance.memory_sync(memory_sync_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_sync: #{e}"
end
```

#### Using the memory_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemorySyncResponse>, Integer, Hash)> memory_sync_with_http_info(memory_sync_request)

```ruby
begin
  # Two-way merge in one round trip — push what you have, receive the full set.
  data, status_code, headers = api_instance.memory_sync_with_http_info(memory_sync_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemorySyncResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling MemoryApi->memory_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memory_sync_request** | [**MemorySyncRequest**](MemorySyncRequest.md) |  |  |

### Return type

[**MemorySyncResponse**](MemorySyncResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

