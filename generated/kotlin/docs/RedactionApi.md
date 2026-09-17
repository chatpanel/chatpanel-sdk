# RedactionApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**redactionPreview**](RedactionApi.md#redactionPreview) | **POST** /redact | What the model would receive if this text were sent now. |


<a id="redactionPreview"></a>
# **redactionPreview**
> RedactionPreview redactionPreview(redactionPreviewRequest)

What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RedactionApi()
val redactionPreviewRequest : RedactionPreviewRequest =  // RedactionPreviewRequest | 
try {
    val result : RedactionPreview = apiInstance.redactionPreview(redactionPreviewRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RedactionApi#redactionPreview")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RedactionApi#redactionPreview")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **redactionPreviewRequest** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md)|  | |

### Return type

[**RedactionPreview**](RedactionPreview.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

