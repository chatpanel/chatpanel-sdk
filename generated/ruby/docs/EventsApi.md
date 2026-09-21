# ChatPanel::EventsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**events_cursor**](EventsApi.md#events_cursor) | **GET** /v1/events/cursor | The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes. |
| [**events_push**](EventsApi.md#events_push) | **POST** /v1/events | Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named. |
| [**events_since**](EventsApi.md#events_since) | **GET** /v1/events | The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged. |
| [**events_stats**](EventsApi.md#events_stats) | **GET** /v1/events/stats | What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap. |
| [**events_stream**](EventsApi.md#events_stream) | **GET** /v1/events/stream | Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first. |


## events_cursor

> <EventsCursor> events_cursor

The gateway's highest `seq` per host — what a client asks for before it pushes.

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

api_instance = ChatPanel::EventsApi.new

begin
  # The gateway's highest `seq` per host — what a client asks for before it pushes.
  result = api_instance.events_cursor
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_cursor: #{e}"
end
```

#### Using the events_cursor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventsCursor>, Integer, Hash)> events_cursor_with_http_info

```ruby
begin
  # The gateway's highest `seq` per host — what a client asks for before it pushes.
  data, status_code, headers = api_instance.events_cursor_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventsCursor>
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_cursor_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EventsCursor**](EventsCursor.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_push

> <PushEventsResponse> events_push(push_events_request)

Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.

Idempotent on event id, so a retry is free. A `seq` that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in `cursor` (the gateway's highest `seq` per host) and stop re-sending what `rejected` names. At most 2000 events per batch. A gateway without SQLite answers 501.

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

api_instance = ChatPanel::EventsApi.new
push_events_request = ChatPanel::PushEventsRequest.new({events: [ChatPanel::CloudEvent.new({specversion: '1.0', id: 'id_example', source: 'source_example', type: 'type_example', time: Time.now, seq: 37, host: 'host_example', chatpanelv: 37})]}) # PushEventsRequest | 

begin
  # Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.
  result = api_instance.events_push(push_events_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_push: #{e}"
end
```

#### Using the events_push_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PushEventsResponse>, Integer, Hash)> events_push_with_http_info(push_events_request)

```ruby
begin
  # Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.
  data, status_code, headers = api_instance.events_push_with_http_info(push_events_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PushEventsResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_push_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **push_events_request** | [**PushEventsRequest**](PushEventsRequest.md) |  |  |

### Return type

[**PushEventsResponse**](PushEventsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## events_since

> <EventsPage> events_since(opts)

The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.

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

api_instance = ChatPanel::EventsApi.new
opts = {
  cursor: 'cursor_example', # String | JSON `{ host: seq }` — the highest seq per host you already hold. Absent means everything.
  limit: 56, # Integer | 
  host: 'host_example' # String | One host's slice only.
}

begin
  # The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.
  result = api_instance.events_since(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_since: #{e}"
end
```

#### Using the events_since_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventsPage>, Integer, Hash)> events_since_with_http_info(opts)

```ruby
begin
  # The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.
  data, status_code, headers = api_instance.events_since_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventsPage>
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_since_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | JSON &#x60;{ host: seq }&#x60; — the highest seq per host you already hold. Absent means everything. | [optional] |
| **limit** | **Integer** |  | [optional][default to 1000] |
| **host** | **String** | One host&#39;s slice only. | [optional] |

### Return type

[**EventsPage**](EventsPage.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_stats

> <EventsStats> events_stats

What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.

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

api_instance = ChatPanel::EventsApi.new

begin
  # What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.
  result = api_instance.events_stats
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_stats: #{e}"
end
```

#### Using the events_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventsStats>, Integer, Hash)> events_stats_with_http_info

```ruby
begin
  # What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.
  data, status_code, headers = api_instance.events_stats_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventsStats>
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_stats_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EventsStats**](EventsStats.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## events_stream

> String events_stream(opts)

Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.

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

api_instance = ChatPanel::EventsApi.new
opts = {
  cursor: 'cursor_example' # String | JSON `{ host: seq }`; when present the events above it are replayed before live frames.
}

begin
  # Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.
  result = api_instance.events_stream(opts)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_stream: #{e}"
end
```

#### Using the events_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> events_stream_with_http_info(opts)

```ruby
begin
  # Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.
  data, status_code, headers = api_instance.events_stream_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ChatPanel::ApiError => e
  puts "Error when calling EventsApi->events_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | JSON &#x60;{ host: seq }&#x60;; when present the events above it are replayed before live frames. | [optional] |

### Return type

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

