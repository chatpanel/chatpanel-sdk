# FusionsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**fusionsList**](FusionsApi.md#fusionsList) | **GET** /v1/fusions | Several models as one — the fusions this gateway has. |
| [**fusionsListWithHttpInfo**](FusionsApi.md#fusionsListWithHttpInfo) | **GET** /v1/fusions | Several models as one — the fusions this gateway has. |



## fusionsList

> FusionList fusionsList()

Several models as one — the fusions this gateway has.

Derived from state (the entity detector&#39;s union once a companion is ready, an engine drafting with a second model) and composed by the user (&#x60;POST /config { fusions }&#x60;, a chat fallback in order). A chat turn names a fallback as &#x60;model: \&quot;fusion:&lt;id&gt;\&quot;&#x60; and is routed to the first member that is up; &#x60;x-chatpanel-fusion&#x60; on the response says which. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.FusionsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        FusionsApi apiInstance = new FusionsApi(defaultClient);
        try {
            FusionList result = apiInstance.fusionsList();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling FusionsApi#fusionsList");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The kinds and the fusions, each described. |  -  |

## fusionsListWithHttpInfo

> ApiResponse<FusionList> fusionsListWithHttpInfo()

Several models as one — the fusions this gateway has.

Derived from state (the entity detector&#39;s union once a companion is ready, an engine drafting with a second model) and composed by the user (&#x60;POST /config { fusions }&#x60;, a chat fallback in order). A chat turn names a fallback as &#x60;model: \&quot;fusion:&lt;id&gt;\&quot;&#x60; and is routed to the first member that is up; &#x60;x-chatpanel-fusion&#x60; on the response says which. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.FusionsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        FusionsApi apiInstance = new FusionsApi(defaultClient);
        try {
            ApiResponse<FusionList> response = apiInstance.fusionsListWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling FusionsApi#fusionsList");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiResponse<[**FusionList**](FusionList.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The kinds and the fusions, each described. |  -  |

