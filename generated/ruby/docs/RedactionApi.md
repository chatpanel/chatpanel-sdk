# ChatPanel::RedactionApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**redaction_preview**](RedactionApi.md#redaction_preview) | **POST** /redact | What the model would receive if this text were sent now. |


## redaction_preview

> <RedactionPreview> redaction_preview(redaction_preview_request)

What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.

### Examples

```ruby
require 'time'
require 'chatpanel'
# setup authorization
ChatPanel.configure do |config|
  # Configure Bearer authorization: gatewayToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ChatPanel::RedactionApi.new
redaction_preview_request = ChatPanel::RedactionPreviewRequest.new({text: 'text_example'}) # RedactionPreviewRequest | 

begin
  # What the model would receive if this text were sent now.
  result = api_instance.redaction_preview(redaction_preview_request)
  p result
rescue ChatPanel::ApiError => e
  puts "Error when calling RedactionApi->redaction_preview: #{e}"
end
```

#### Using the redaction_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactionPreview>, Integer, Hash)> redaction_preview_with_http_info(redaction_preview_request)

```ruby
begin
  # What the model would receive if this text were sent now.
  data, status_code, headers = api_instance.redaction_preview_with_http_info(redaction_preview_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactionPreview>
rescue ChatPanel::ApiError => e
  puts "Error when calling RedactionApi->redaction_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redaction_preview_request** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md) |  |  |

### Return type

[**RedactionPreview**](RedactionPreview.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

