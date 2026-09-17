# EnginesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**enginesAppendEntry**](EnginesApi.md#enginesAppendEntry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine. |
| [**enginesAppendEntryWithHttpInfo**](EnginesApi.md#enginesAppendEntryWithHttpInfo) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine. |
| [**enginesCard**](EnginesApi.md#enginesCard) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries. |
| [**enginesCardWithHttpInfo**](EnginesApi.md#enginesCardWithHttpInfo) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries. |
| [**enginesList**](EnginesApi.md#enginesList) | **GET** /v1/engines | Every engine&#39;s card. |
| [**enginesListWithHttpInfo**](EnginesApi.md#enginesListWithHttpInfo) | **GET** /v1/engines | Every engine&#39;s card. |



## enginesAppendEntry

> Map<String, Object> enginesAppendEntry(engineKey, requestBody)

Append a ledger entry for an engine.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EnginesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        EnginesApi apiInstance = new EnginesApi(defaultClient);
        String engineKey = "engineKey_example"; // String | 
        Map<String, Object> requestBody = null; // Map<String, Object> | 
        try {
            Map<String, Object> result = apiInstance.enginesAppendEntry(engineKey, requestBody);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling EnginesApi#enginesAppendEntry");
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
| **engineKey** | **String**|  | |
| **requestBody** | [**Map&lt;String, Object&gt;**](Object.md)|  | |

### Return type

**Map&lt;String, Object&gt;**


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The entry. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

## enginesAppendEntryWithHttpInfo

> ApiResponse<Map<String, Object>> enginesAppendEntryWithHttpInfo(engineKey, requestBody)

Append a ledger entry for an engine.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EnginesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        EnginesApi apiInstance = new EnginesApi(defaultClient);
        String engineKey = "engineKey_example"; // String | 
        Map<String, Object> requestBody = null; // Map<String, Object> | 
        try {
            ApiResponse<Map<String, Object>> response = apiInstance.enginesAppendEntryWithHttpInfo(engineKey, requestBody);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling EnginesApi#enginesAppendEntry");
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
| **engineKey** | **String**|  | |
| **requestBody** | [**Map&lt;String, Object&gt;**](Object.md)|  | |

### Return type

ApiResponse<**Map&lt;String, Object&gt;**>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The entry. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |


## enginesCard

> Map<String, Object> enginesCard(engineKey, entries, minCalls)

One engine&#39;s card, optionally with entries.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EnginesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        EnginesApi apiInstance = new EnginesApi(defaultClient);
        String engineKey = "engineKey_example"; // String | 
        Boolean entries = true; // Boolean | 
        Integer minCalls = 56; // Integer | 
        try {
            Map<String, Object> result = apiInstance.enginesCard(engineKey, entries, minCalls);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling EnginesApi#enginesCard");
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
| **engineKey** | **String**|  | |
| **entries** | **Boolean**|  | [optional] |
| **minCalls** | **Integer**|  | [optional] |

### Return type

**Map&lt;String, Object&gt;**


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |

## enginesCardWithHttpInfo

> ApiResponse<Map<String, Object>> enginesCardWithHttpInfo(engineKey, entries, minCalls)

One engine&#39;s card, optionally with entries.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EnginesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        EnginesApi apiInstance = new EnginesApi(defaultClient);
        String engineKey = "engineKey_example"; // String | 
        Boolean entries = true; // Boolean | 
        Integer minCalls = 56; // Integer | 
        try {
            ApiResponse<Map<String, Object>> response = apiInstance.enginesCardWithHttpInfo(engineKey, entries, minCalls);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling EnginesApi#enginesCard");
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
| **engineKey** | **String**|  | |
| **entries** | **Boolean**|  | [optional] |
| **minCalls** | **Integer**|  | [optional] |

### Return type

ApiResponse<**Map&lt;String, Object&gt;**>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |


## enginesList

> EnginesList200Response enginesList(minCalls)

Every engine&#39;s card.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EnginesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        EnginesApi apiInstance = new EnginesApi(defaultClient);
        Integer minCalls = 56; // Integer | 
        try {
            EnginesList200Response result = apiInstance.enginesList(minCalls);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling EnginesApi#enginesList");
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
| **minCalls** | **Integer**|  | [optional] |

### Return type

[**EnginesList200Response**](EnginesList200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Engines. |  -  |

## enginesListWithHttpInfo

> ApiResponse<EnginesList200Response> enginesListWithHttpInfo(minCalls)

Every engine&#39;s card.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EnginesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        EnginesApi apiInstance = new EnginesApi(defaultClient);
        Integer minCalls = 56; // Integer | 
        try {
            ApiResponse<EnginesList200Response> response = apiInstance.enginesListWithHttpInfo(minCalls);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling EnginesApi#enginesList");
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
| **minCalls** | **Integer**|  | [optional] |

### Return type

ApiResponse<[**EnginesList200Response**](EnginesList200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Engines. |  -  |

