# ChatPanel::EnginesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**engines_append_entry**](EnginesApi.md#engines_append_entry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine. |
| [**engines_card**](EnginesApi.md#engines_card) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries. |
| [**engines_list**](EnginesApi.md#engines_list) | **GET** /v1/engines | Every engine&#39;s card. |


## engines_append_entry

> Hash&lt;String, Object&gt; engines_append_entry(engine_key, request_body)

Append a ledger entry for an engine.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::EnginesApi.new
engine_key = 'engine_key_example' # String | 
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Append a ledger entry for an engine.
  result = api_instance.engines_append_entry(engine_key, request_body)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling EnginesApi->engines_append_entry: #{e}"
end
```

#### Using the engines_append_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> engines_append_entry_with_http_info(engine_key, request_body)

```ruby
begin
  # Append a ledger entry for an engine.
  data, status_code, headers = api_instance.engines_append_entry_with_http_info(engine_key, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue ChatPanel::ApiError => e
  puts "Error when calling EnginesApi->engines_append_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **engine_key** | **String** |  |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## engines_card

> Hash&lt;String, Object&gt; engines_card(engine_key, opts)

One engine's card, optionally with entries.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::EnginesApi.new
engine_key = 'engine_key_example' # String | 
opts = {
  entries: true, # Boolean | 
  min_calls: 56 # Integer | 
}

begin
  # One engine's card, optionally with entries.
  result = api_instance.engines_card(engine_key, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling EnginesApi->engines_card: #{e}"
end
```

#### Using the engines_card_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> engines_card_with_http_info(engine_key, opts)

```ruby
begin
  # One engine's card, optionally with entries.
  data, status_code, headers = api_instance.engines_card_with_http_info(engine_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue ChatPanel::ApiError => e
  puts "Error when calling EnginesApi->engines_card_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **engine_key** | **String** |  |  |
| **entries** | **Boolean** |  | [optional] |
| **min_calls** | **Integer** |  | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## engines_list

> <EnginesList200Response> engines_list(opts)

Every engine's card.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::EnginesApi.new
opts = {
  min_calls: 56 # Integer | 
}

begin
  # Every engine's card.
  result = api_instance.engines_list(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling EnginesApi->engines_list: #{e}"
end
```

#### Using the engines_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnginesList200Response>, Integer, Hash)> engines_list_with_http_info(opts)

```ruby
begin
  # Every engine's card.
  data, status_code, headers = api_instance.engines_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnginesList200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling EnginesApi->engines_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_calls** | **Integer** |  | [optional] |

### Return type

[**EnginesList200Response**](EnginesList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

