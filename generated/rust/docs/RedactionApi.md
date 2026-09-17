# \RedactionApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**redaction_preview**](RedactionApi.md#redaction_preview) | **POST** /redact | What the model would receive if this text were sent now.



## redaction_preview

> models::RedactionPreview redaction_preview(redaction_preview_request)
What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**redaction_preview_request** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md) |  | [required] |

### Return type

[**models::RedactionPreview**](RedactionPreview.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

