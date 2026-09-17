# ChatPanel::PrefsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**prefs_delete**](PrefsApi.md#prefs_delete) | **DELETE** /v1/prefs | Remove one section. |
| [**prefs_events**](PrefsApi.md#prefs_events) | **GET** /v1/prefs/events | Live — which sections another client wrote. |
| [**prefs_get**](PrefsApi.md#prefs_get) | **GET** /v1/prefs | The shared sections, or only their stamps. |
| [**prefs_put**](PrefsApi.md#prefs_put) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp. |


## prefs_delete

> <PrefsDelete200Response> prefs_delete(section)

Remove one section.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::PrefsApi.new
section = 'section_example' # String | 

begin
  # Remove one section.
  result = api_instance.prefs_delete(section)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling PrefsApi->prefs_delete: #{e}"
end
```

#### Using the prefs_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrefsDelete200Response>, Integer, Hash)> prefs_delete_with_http_info(section)

```ruby
begin
  # Remove one section.
  data, status_code, headers = api_instance.prefs_delete_with_http_info(section)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrefsDelete200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling PrefsApi->prefs_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **section** | **String** |  |  |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## prefs_events

> String prefs_events

Live — which sections another client wrote.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::PrefsApi.new

begin
  # Live — which sections another client wrote.
  result = api_instance.prefs_events
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling PrefsApi->prefs_events: #{e}"
end
```

#### Using the prefs_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> prefs_events_with_http_info

```ruby
begin
  # Live — which sections another client wrote.
  data, status_code, headers = api_instance.prefs_events_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling PrefsApi->prefs_events_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream


## prefs_get

> <Prefs> prefs_get(opts)

The shared sections, or only their stamps.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::PrefsApi.new
opts = {
  section: 'section_example', # String | 
  stamps: true # Boolean | Only `{ revision, stamps }`.
}

begin
  # The shared sections, or only their stamps.
  result = api_instance.prefs_get(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling PrefsApi->prefs_get: #{e}"
end
```

#### Using the prefs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Prefs>, Integer, Hash)> prefs_get_with_http_info(opts)

```ruby
begin
  # The shared sections, or only their stamps.
  data, status_code, headers = api_instance.prefs_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Prefs>
rescue ChatPanel::ApiError => e
  puts "Error when calling PrefsApi->prefs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **section** | **String** |  | [optional] |
| **stamps** | **Boolean** | Only &#x60;{ revision, stamps }&#x60;. | [optional] |

### Return type

[**Prefs**](Prefs.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## prefs_put

> <PrefsWriteResult> prefs_put(prefs_write)

Write sections; per-section last-writer-wins by stamp.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::PrefsApi.new
prefs_write = ChatPanel::PrefsWrite.new({sections: { key: ChatPanel::PrefSection.new({value: 3.56})}}) # PrefsWrite | 

begin
  # Write sections; per-section last-writer-wins by stamp.
  result = api_instance.prefs_put(prefs_write)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling PrefsApi->prefs_put: #{e}"
end
```

#### Using the prefs_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrefsWriteResult>, Integer, Hash)> prefs_put_with_http_info(prefs_write)

```ruby
begin
  # Write sections; per-section last-writer-wins by stamp.
  data, status_code, headers = api_instance.prefs_put_with_http_info(prefs_write)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrefsWriteResult>
rescue ChatPanel::ApiError => e
  puts "Error when calling PrefsApi->prefs_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefs_write** | [**PrefsWrite**](PrefsWrite.md) |  |  |

### Return type

[**PrefsWriteResult**](PrefsWriteResult.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

