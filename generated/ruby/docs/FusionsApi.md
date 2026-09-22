# ChatPanel::FusionsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**fusions_list**](FusionsApi.md#fusions_list) | **GET** /v1/fusions | Several models as one — the fusions this gateway has. |


## fusions_list

> <FusionList> fusions_list

Several models as one — the fusions this gateway has.

Derived from state (the entity detector's union once a companion is ready, an engine drafting with a second model) and composed by the user (`POST /config { fusions }`, a chat fallback in order). A chat turn names a fallback as `model: \"fusion:<id>\"` and is routed to the first member that is up; `x-chatpanel-fusion` on the response says which. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::FusionsApi.new

begin
  # Several models as one — the fusions this gateway has.
  result = api_instance.fusions_list
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling FusionsApi->fusions_list: #{e}"
end
```

#### Using the fusions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FusionList>, Integer, Hash)> fusions_list_with_http_info

```ruby
begin
  # Several models as one — the fusions this gateway has.
  data, status_code, headers = api_instance.fusions_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FusionList>
rescue ChatPanel::ApiError => e
  puts "Error when calling FusionsApi->fusions_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FusionList**](FusionList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

