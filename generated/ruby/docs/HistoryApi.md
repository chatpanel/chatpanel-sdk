# ChatPanel::HistoryApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**history_get**](HistoryApi.md#history_get) | **GET** /v1/history/get | One full warm record, optionally paged by characters. |
| [**history_ingest**](HistoryApi.md#history_ingest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index. |
| [**history_list**](HistoryApi.md#history_list) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies. |
| [**history_put_records**](HistoryApi.md#history_put_records) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself. |
| [**history_records**](HistoryApi.md#history_records) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included. |
| [**history_related**](HistoryApi.md#history_related) | **GET** /v1/history/related | The records most connected to one record. |
| [**history_search**](HistoryApi.md#history_search) | **POST** /v1/history/search | One keyword query over the warm index. |
| [**history_smart_search**](HistoryApi.md#history_smart_search) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead. |
| [**history_status**](HistoryApi.md#history_status) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0). |
| [**history_stream**](HistoryApi.md#history_stream) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change. |


## history_get

> <HistoryGet200Response> history_get(id, opts)

One full warm record, optionally paged by characters.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::HistoryApi.new
id = 'id_example' # String | 
opts = {
  max_chars: 56, # Integer | Page a long transcript instead of pulling it all.
  offset: 56 # Integer | 
}

begin
  # One full warm record, optionally paged by characters.
  result = api_instance.history_get(id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_get: #{e}"
end
```

#### Using the history_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HistoryGet200Response>, Integer, Hash)> history_get_with_http_info(id, opts)

```ruby
begin
  # One full warm record, optionally paged by characters.
  data, status_code, headers = api_instance.history_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HistoryGet200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **max_chars** | **Integer** | Page a long transcript instead of pulling it all. | [optional] |
| **offset** | **Integer** |  | [optional][default to 0] |

### Return type

[**HistoryGet200Response**](HistoryGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## history_ingest

> <HistoryIngest200Response> history_ingest(ingest_request)

Push flattened (lossy) records into the warm index.

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

api_instance = ChatPanel::HistoryApi.new
ingest_request = ChatPanel::IngestRequest.new # IngestRequest | 

begin
  # Push flattened (lossy) records into the warm index.
  result = api_instance.history_ingest(ingest_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_ingest: #{e}"
end
```

#### Using the history_ingest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HistoryIngest200Response>, Integer, Hash)> history_ingest_with_http_info(ingest_request)

```ruby
begin
  # Push flattened (lossy) records into the warm index.
  data, status_code, headers = api_instance.history_ingest_with_http_info(ingest_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HistoryIngest200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_ingest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ingest_request** | [**IngestRequest**](IngestRequest.md) |  |  |

### Return type

[**HistoryIngest200Response**](HistoryIngest200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## history_list

> <HistoryPage> history_list(opts)

A page of the warm index — metadata only, no bodies.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::HistoryApi.new
opts = {
  limit: 56, # Integer | 
  offset: 56, # Integer | 
  type: ChatPanel::RecordType::CHAT # RecordType | 
}

begin
  # A page of the warm index — metadata only, no bodies.
  result = api_instance.history_list(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_list: #{e}"
end
```

#### Using the history_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HistoryPage>, Integer, Hash)> history_list_with_http_info(opts)

```ruby
begin
  # A page of the warm index — metadata only, no bodies.
  data, status_code, headers = api_instance.history_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HistoryPage>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional][default to 50] |
| **offset** | **Integer** |  | [optional][default to 0] |
| **type** | [**RecordType**](.md) |  | [optional] |

### Return type

[**HistoryPage**](HistoryPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## history_put_records

> <PutRecordsResponse> history_put_records(put_records_request)

Push whole records; the gateway derives the searchable text itself.

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

api_instance = ChatPanel::HistoryApi.new
put_records_request = ChatPanel::PutRecordsRequest.new # PutRecordsRequest | 

begin
  # Push whole records; the gateway derives the searchable text itself.
  result = api_instance.history_put_records(put_records_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_put_records: #{e}"
end
```

#### Using the history_put_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutRecordsResponse>, Integer, Hash)> history_put_records_with_http_info(put_records_request)

```ruby
begin
  # Push whole records; the gateway derives the searchable text itself.
  data, status_code, headers = api_instance.history_put_records_with_http_info(put_records_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutRecordsResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_put_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **put_records_request** | [**PutRecordsRequest**](PutRecordsRequest.md) |  |  |

### Return type

[**PutRecordsResponse**](PutRecordsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## history_records

> <RecordsPage> history_records(opts)

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::HistoryApi.new
opts = {
  since: 789, # Integer | A stamp (ms since epoch) from a previous page's `newest`.
  cursor: 'cursor_example', # String | Opaque; from the previous page.
  limit: 56, # Integer | 
  kind: 'kind_example' # String | 
}

begin
  # WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
  result = api_instance.history_records(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_records: #{e}"
end
```

#### Using the history_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecordsPage>, Integer, Hash)> history_records_with_http_info(opts)

```ruby
begin
  # WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
  data, status_code, headers = api_instance.history_records_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecordsPage>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Integer** | A stamp (ms since epoch) from a previous page&#39;s &#x60;newest&#x60;. | [optional][default to 0] |
| **cursor** | **String** | Opaque; from the previous page. | [optional] |
| **limit** | **Integer** |  | [optional][default to 200] |
| **kind** | **String** |  | [optional] |

### Return type

[**RecordsPage**](RecordsPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## history_related

> <HistoryRelated200Response> history_related(id, opts)

The records most connected to one record.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::HistoryApi.new
id = 'id_example' # String | 
opts = {
  limit: 56 # Integer | 
}

begin
  # The records most connected to one record.
  result = api_instance.history_related(id, opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_related: #{e}"
end
```

#### Using the history_related_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HistoryRelated200Response>, Integer, Hash)> history_related_with_http_info(id, opts)

```ruby
begin
  # The records most connected to one record.
  data, status_code, headers = api_instance.history_related_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HistoryRelated200Response>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_related_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 5] |

### Return type

[**HistoryRelated200Response**](HistoryRelated200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## history_search

> <SearchResponse> history_search(search_request)

One keyword query over the warm index.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::HistoryApi.new
search_request = ChatPanel::SearchRequest.new({query: 'query_example'}) # SearchRequest | 

begin
  # One keyword query over the warm index.
  result = api_instance.history_search(search_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_search: #{e}"
end
```

#### Using the history_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResponse>, Integer, Hash)> history_search_with_http_info(search_request)

```ruby
begin
  # One keyword query over the warm index.
  data, status_code, headers = api_instance.history_search_with_http_info(search_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_request** | [**SearchRequest**](SearchRequest.md) |  |  |

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## history_smart_search

> <SmartSearchResponse> history_smart_search(smart_search_request)

Several phrasings at once, rank-fused; briefs lead.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::HistoryApi.new
smart_search_request = ChatPanel::SmartSearchRequest.new({question: 'question_example'}) # SmartSearchRequest | 

begin
  # Several phrasings at once, rank-fused; briefs lead.
  result = api_instance.history_smart_search(smart_search_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_smart_search: #{e}"
end
```

#### Using the history_smart_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmartSearchResponse>, Integer, Hash)> history_smart_search_with_http_info(smart_search_request)

```ruby
begin
  # Several phrasings at once, rank-fused; briefs lead.
  data, status_code, headers = api_instance.history_smart_search_with_http_info(smart_search_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmartSearchResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_smart_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smart_search_request** | [**SmartSearchRequest**](SmartSearchRequest.md) |  |  |

### Return type

[**SmartSearchResponse**](SmartSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## history_status

> <HistoryStatus> history_status

Size and freshness of the warm index (and the lossless tier from 0.10.0).

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::HistoryApi.new

begin
  # Size and freshness of the warm index (and the lossless tier from 0.10.0).
  result = api_instance.history_status
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_status: #{e}"
end
```

#### Using the history_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HistoryStatus>, Integer, Hash)> history_status_with_http_info

```ruby
begin
  # Size and freshness of the warm index (and the lossless tier from 0.10.0).
  data, status_code, headers = api_instance.history_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HistoryStatus>
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**HistoryStatus**](HistoryStatus.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## history_stream

> String history_stream

Live record changes — `hello` once, then a `records` event per change.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::HistoryApi.new

begin
  # Live record changes — `hello` once, then a `records` event per change.
  result = api_instance.history_stream
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_stream: #{e}"
end
```

#### Using the history_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> history_stream_with_http_info

```ruby
begin
  # Live record changes — `hello` once, then a `records` event per change.
  data, status_code, headers = api_instance.history_stream_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling HistoryApi->history_stream_with_http_info: #{e}"
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
- **Accept**: text/event-stream, application/json

