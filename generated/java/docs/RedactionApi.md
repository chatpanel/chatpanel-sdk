# RedactionApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**redactionPreview**](RedactionApi.md#redactionPreview) | **POST** /redact | What the model would receive if this text were sent now. |
| [**redactionPreviewWithHttpInfo**](RedactionApi.md#redactionPreviewWithHttpInfo) | **POST** /redact | What the model would receive if this text were sent now. |



## redactionPreview

> RedactionPreview redactionPreview(redactionPreviewRequest)

What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.RedactionApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        RedactionApi apiInstance = new RedactionApi(defaultClient);
        RedactionPreviewRequest redactionPreviewRequest = new RedactionPreviewRequest(); // RedactionPreviewRequest | 
        try {
            RedactionPreview result = apiInstance.redactionPreview(redactionPreviewRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling RedactionApi#redactionPreview");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **redactionPreviewRequest** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md)|  | |

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

## redactionPreviewWithHttpInfo

> ApiResponse<RedactionPreview> redactionPreviewWithHttpInfo(redactionPreviewRequest)

What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.RedactionApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        RedactionApi apiInstance = new RedactionApi(defaultClient);
        RedactionPreviewRequest redactionPreviewRequest = new RedactionPreviewRequest(); // RedactionPreviewRequest | 
        try {
            ApiResponse<RedactionPreview> response = apiInstance.redactionPreviewWithHttpInfo(redactionPreviewRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling RedactionApi#redactionPreview");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **redactionPreviewRequest** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md)|  | |

### Return type

ApiResponse<[**RedactionPreview**](RedactionPreview.md)>


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

