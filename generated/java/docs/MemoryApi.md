# MemoryApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**memoryForget**](MemoryApi.md#memoryForget) | **POST** /v1/memory/forget | Forget memories matching an id or words. |
| [**memoryForgetWithHttpInfo**](MemoryApi.md#memoryForgetWithHttpInfo) | **POST** /v1/memory/forget | Forget memories matching an id or words. |
| [**memoryList**](MemoryApi.md#memoryList) | **GET** /v1/memory/list | Every memory. |
| [**memoryListWithHttpInfo**](MemoryApi.md#memoryListWithHttpInfo) | **GET** /v1/memory/list | Every memory. |
| [**memoryRecall**](MemoryApi.md#memoryRecall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them. |
| [**memoryRecallWithHttpInfo**](MemoryApi.md#memoryRecallWithHttpInfo) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them. |
| [**memoryRemember**](MemoryApi.md#memoryRemember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded. |
| [**memoryRememberWithHttpInfo**](MemoryApi.md#memoryRememberWithHttpInfo) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded. |
| [**memorySync**](MemoryApi.md#memorySync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set. |
| [**memorySyncWithHttpInfo**](MemoryApi.md#memorySyncWithHttpInfo) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set. |



## memoryForget

> MemoryForget200Response memoryForget(memoryForgetRequest)

Forget memories matching an id or words.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

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

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        MemoryForgetRequest memoryForgetRequest = new MemoryForgetRequest(); // MemoryForgetRequest | 
        try {
            MemoryForget200Response result = apiInstance.memoryForget(memoryForgetRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memoryForget");
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
| **memoryForgetRequest** | [**MemoryForgetRequest**](MemoryForgetRequest.md)|  | |

### Return type

[**MemoryForget200Response**](MemoryForget200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | How many were removed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## memoryForgetWithHttpInfo

> ApiResponse<MemoryForget200Response> memoryForgetWithHttpInfo(memoryForgetRequest)

Forget memories matching an id or words.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

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

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        MemoryForgetRequest memoryForgetRequest = new MemoryForgetRequest(); // MemoryForgetRequest | 
        try {
            ApiResponse<MemoryForget200Response> response = apiInstance.memoryForgetWithHttpInfo(memoryForgetRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memoryForget");
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
| **memoryForgetRequest** | [**MemoryForgetRequest**](MemoryForgetRequest.md)|  | |

### Return type

ApiResponse<[**MemoryForget200Response**](MemoryForget200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | How many were removed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## memoryList

> MemoryList memoryList()

Every memory.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        try {
            MemoryList result = apiInstance.memoryList();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memoryList");
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

[**MemoryList**](MemoryList.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The list. |  -  |

## memoryListWithHttpInfo

> ApiResponse<MemoryList> memoryListWithHttpInfo()

Every memory.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        try {
            ApiResponse<MemoryList> response = apiInstance.memoryListWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memoryList");
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

ApiResponse<[**MemoryList**](MemoryList.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The list. |  -  |


## memoryRecall

> RecallResponse memoryRecall(recallRequest)

The memories relevant to a text, and a prompt block that carries them.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        RecallRequest recallRequest = new RecallRequest(); // RecallRequest | 
        try {
            RecallResponse result = apiInstance.memoryRecall(recallRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memoryRecall");
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
| **recallRequest** | [**RecallRequest**](RecallRequest.md)|  | |

### Return type

[**RecallResponse**](RecallResponse.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Relevant memories. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

## memoryRecallWithHttpInfo

> ApiResponse<RecallResponse> memoryRecallWithHttpInfo(recallRequest)

The memories relevant to a text, and a prompt block that carries them.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        RecallRequest recallRequest = new RecallRequest(); // RecallRequest | 
        try {
            ApiResponse<RecallResponse> response = apiInstance.memoryRecallWithHttpInfo(recallRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memoryRecall");
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
| **recallRequest** | [**RecallRequest**](RecallRequest.md)|  | |

### Return type

ApiResponse<[**RecallResponse**](RecallResponse.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Relevant memories. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |


## memoryRemember

> RememberResponse memoryRemember(rememberRequest)

Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

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

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        RememberRequest rememberRequest = new RememberRequest(); // RememberRequest | 
        try {
            RememberResponse result = apiInstance.memoryRemember(rememberRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memoryRemember");
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
| **rememberRequest** | [**RememberRequest**](RememberRequest.md)|  | |

### Return type

[**RememberResponse**](RememberResponse.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What happened — added, updated, or replaced an older memory. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## memoryRememberWithHttpInfo

> ApiResponse<RememberResponse> memoryRememberWithHttpInfo(rememberRequest)

Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

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

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        RememberRequest rememberRequest = new RememberRequest(); // RememberRequest | 
        try {
            ApiResponse<RememberResponse> response = apiInstance.memoryRememberWithHttpInfo(rememberRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memoryRemember");
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
| **rememberRequest** | [**RememberRequest**](RememberRequest.md)|  | |

### Return type

ApiResponse<[**RememberResponse**](RememberResponse.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What happened — added, updated, or replaced an older memory. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## memorySync

> MemorySyncResponse memorySync(memorySyncRequest)

Two-way merge in one round trip — push what you have, receive the full set.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

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

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        MemorySyncRequest memorySyncRequest = new MemorySyncRequest(); // MemorySyncRequest | 
        try {
            MemorySyncResponse result = apiInstance.memorySync(memorySyncRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memorySync");
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
| **memorySyncRequest** | [**MemorySyncRequest**](MemorySyncRequest.md)|  | |

### Return type

[**MemorySyncResponse**](MemorySyncResponse.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The merged set. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## memorySyncWithHttpInfo

> ApiResponse<MemorySyncResponse> memorySyncWithHttpInfo(memorySyncRequest)

Two-way merge in one round trip — push what you have, receive the full set.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.MemoryApi;

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

        MemoryApi apiInstance = new MemoryApi(defaultClient);
        MemorySyncRequest memorySyncRequest = new MemorySyncRequest(); // MemorySyncRequest | 
        try {
            ApiResponse<MemorySyncResponse> response = apiInstance.memorySyncWithHttpInfo(memorySyncRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling MemoryApi#memorySync");
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
| **memorySyncRequest** | [**MemorySyncRequest**](MemorySyncRequest.md)|  | |

### Return type

ApiResponse<[**MemorySyncResponse**](MemorySyncResponse.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The merged set. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

