# ChatPanel.Sdk.Api.RedactionApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**RedactionPreview**](RedactionApi.md#redactionpreview) | **POST** /redact | What the model would receive if this text were sent now. |

<a id="redactionpreview"></a>
# **RedactionPreview**
> RedactionPreview RedactionPreview (RedactionPreviewRequest redactionPreviewRequest)

What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **redactionPreviewRequest** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md) |  |  |

### Return type

[**RedactionPreview**](RedactionPreview.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The redacted text and what was replaced. |  -  |
| **500** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

