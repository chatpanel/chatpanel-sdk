# ChatPanel::ModelsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**models_list**](ModelsApi.md#models_list) | **GET** /v1/models | Every model the gateway can route to. |


## models_list

> <ModelList> models_list

Every model the gateway can route to.

Describes the routing table, not the disk: a bridge agent is listed whether or not the CLI is installed. From 0.6.64 each agent carries `available`; from 0.6.66 a cloud model carries `configured: false` when a turn is known to fail for something the user can fix. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::ModelsApi.new

begin
  # Every model the gateway can route to.
  result = api_instance.models_list
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling ModelsApi->models_list: #{e}"
end
```

#### Using the models_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelList>, Integer, Hash)> models_list_with_http_info

```ruby
begin
  # Every model the gateway can route to.
  data, status_code, headers = api_instance.models_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelList>
rescue ChatPanel::ApiError => e
  puts "Error when calling ModelsApi->models_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModelList**](ModelList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

