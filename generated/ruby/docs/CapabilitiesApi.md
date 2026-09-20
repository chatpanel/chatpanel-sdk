# ChatPanel::CapabilitiesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capabilities_detect**](CapabilitiesApi.md#capabilities_detect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores. |
| [**capabilities_list**](CapabilitiesApi.md#capabilities_list) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state. |


## capabilities_detect

> <DetectResponse> capabilities_detect(detect_request)

Find entities in text — the model's own labels, with offsets and scores.

The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::CapabilitiesApi.new
detect_request = ChatPanel::DetectRequest.new({text: 'text_example'}) # DetectRequest | 

begin
  # Find entities in text — the model's own labels, with offsets and scores.
  result = api_instance.capabilities_detect(detect_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling CapabilitiesApi->capabilities_detect: #{e}"
end
```

#### Using the capabilities_detect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectResponse>, Integer, Hash)> capabilities_detect_with_http_info(detect_request)

```ruby
begin
  # Find entities in text — the model's own labels, with offsets and scores.
  data, status_code, headers = api_instance.capabilities_detect_with_http_info(detect_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectResponse>
rescue ChatPanel::ApiError => e
  puts "Error when calling CapabilitiesApi->capabilities_detect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detect_request** | [**DetectRequest**](DetectRequest.md) |  |  |

### Return type

[**DetectResponse**](DetectResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## capabilities_list

> <CapabilitiesDocument> capabilities_list

What this provider can do — which capabilities, models, measured cost and runtime state.

The discovery document a client chooses a provider from: one entry per capability (`detect`, `stt`, `tts` today; `decide`, `rerank`, `embed` as they land), each at its standard route, with the models it can serve, the loaded model's own label vocabulary (`detect`), the measured latency record, and the runtime's state. Never loads a model. 

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::CapabilitiesApi.new

begin
  # What this provider can do — which capabilities, models, measured cost and runtime state.
  result = api_instance.capabilities_list
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling CapabilitiesApi->capabilities_list: #{e}"
end
```

#### Using the capabilities_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapabilitiesDocument>, Integer, Hash)> capabilities_list_with_http_info

```ruby
begin
  # What this provider can do — which capabilities, models, measured cost and runtime state.
  data, status_code, headers = api_instance.capabilities_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapabilitiesDocument>
rescue ChatPanel::ApiError => e
  puts "Error when calling CapabilitiesApi->capabilities_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CapabilitiesDocument**](CapabilitiesDocument.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

