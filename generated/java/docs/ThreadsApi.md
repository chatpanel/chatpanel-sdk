# ThreadsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**threadsSend**](ThreadsApi.md#threadsSend) | **POST** /v1/threads/send | Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat. |
| [**threadsSendWithHttpInfo**](ThreadsApi.md#threadsSendWithHttpInfo) | **POST** /v1/threads/send | Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat. |



## threadsSend

> ThreadsSend200Response threadsSend(threadsSendRequest)

Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat.

The chat&#39;s own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; &#x60;dryRun&#x60; returns the chat&#39;s title and model for that question without running anything.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.ThreadsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        ThreadsApi apiInstance = new ThreadsApi(defaultClient);
        ThreadsSendRequest threadsSendRequest = new ThreadsSendRequest(); // ThreadsSendRequest | 
        try {
            ThreadsSend200Response result = apiInstance.threadsSend(threadsSendRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ThreadsApi#threadsSend");
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
| **threadsSendRequest** | [**ThreadsSendRequest**](ThreadsSendRequest.md)|  | |

### Return type

[**ThreadsSend200Response**](ThreadsSend200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The chat&#39;s answer (absent on a dry run). |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## threadsSendWithHttpInfo

> ApiResponse<ThreadsSend200Response> threadsSendWithHttpInfo(threadsSendRequest)

Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat.

The chat&#39;s own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; &#x60;dryRun&#x60; returns the chat&#39;s title and model for that question without running anything.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.ThreadsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure API key authorization: tokenHeader
        ApiKeyAuth tokenHeader = (ApiKeyAuth) defaultClient.getAuthentication("tokenHeader");
        tokenHeader.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //tokenHeader.setApiKeyPrefix("Token");

        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        ThreadsApi apiInstance = new ThreadsApi(defaultClient);
        ThreadsSendRequest threadsSendRequest = new ThreadsSendRequest(); // ThreadsSendRequest | 
        try {
            ApiResponse<ThreadsSend200Response> response = apiInstance.threadsSendWithHttpInfo(threadsSendRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling ThreadsApi#threadsSend");
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
| **threadsSendRequest** | [**ThreadsSendRequest**](ThreadsSendRequest.md)|  | |

### Return type

ApiResponse<[**ThreadsSend200Response**](ThreadsSend200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The chat&#39;s answer (absent on a dry run). |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

