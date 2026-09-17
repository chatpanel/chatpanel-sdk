# RedactionAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**redactionPreview**](RedactionAPI.md#redactionpreview) | **POST** /redact | What the model would receive if this text were sent now.


# **redactionPreview**
```swift
    open class func redactionPreview(redactionPreviewRequest: RedactionPreviewRequest, completion: @escaping (_ data: RedactionPreview?, _ error: Error?) -> Void)
```

What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let redactionPreviewRequest = redaction_preview_request(text: "text_example") // RedactionPreviewRequest | 

// What the model would receive if this text were sent now.
RedactionAPI.redactionPreview(redactionPreviewRequest: redactionPreviewRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redactionPreviewRequest** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md) |  | 

### Return type

[**RedactionPreview**](RedactionPreview.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

