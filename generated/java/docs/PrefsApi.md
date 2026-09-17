# PrefsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**prefsDelete**](PrefsApi.md#prefsDelete) | **DELETE** /v1/prefs | Remove one section. |
| [**prefsDeleteWithHttpInfo**](PrefsApi.md#prefsDeleteWithHttpInfo) | **DELETE** /v1/prefs | Remove one section. |
| [**prefsEvents**](PrefsApi.md#prefsEvents) | **GET** /v1/prefs/events | Live — which sections another client wrote. |
| [**prefsEventsWithHttpInfo**](PrefsApi.md#prefsEventsWithHttpInfo) | **GET** /v1/prefs/events | Live — which sections another client wrote. |
| [**prefsGet**](PrefsApi.md#prefsGet) | **GET** /v1/prefs | The shared sections, or only their stamps. |
| [**prefsGetWithHttpInfo**](PrefsApi.md#prefsGetWithHttpInfo) | **GET** /v1/prefs | The shared sections, or only their stamps. |
| [**prefsPut**](PrefsApi.md#prefsPut) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp. |
| [**prefsPutWithHttpInfo**](PrefsApi.md#prefsPutWithHttpInfo) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp. |



## prefsDelete

> PrefsDelete200Response prefsDelete(section)

Remove one section.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.PrefsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        PrefsApi apiInstance = new PrefsApi(defaultClient);
        String section = "section_example"; // String | 
        try {
            PrefsDelete200Response result = apiInstance.prefsDelete(section);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling PrefsApi#prefsDelete");
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
| **section** | **String**|  | |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Whether it existed. |  -  |

## prefsDeleteWithHttpInfo

> ApiResponse<PrefsDelete200Response> prefsDeleteWithHttpInfo(section)

Remove one section.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.PrefsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        PrefsApi apiInstance = new PrefsApi(defaultClient);
        String section = "section_example"; // String | 
        try {
            ApiResponse<PrefsDelete200Response> response = apiInstance.prefsDeleteWithHttpInfo(section);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling PrefsApi#prefsDelete");
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
| **section** | **String**|  | |

### Return type

ApiResponse<[**PrefsDelete200Response**](PrefsDelete200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Whether it existed. |  -  |


## prefsEvents

> String prefsEvents()

Live — which sections another client wrote.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.PrefsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        PrefsApi apiInstance = new PrefsApi(defaultClient);
        try {
            String result = apiInstance.prefsEvents();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling PrefsApi#prefsEvents");
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

**String**


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;{ type: hello, revision, stamps }&#x60; first, then &#x60;{ type: changed, ... }&#x60;. |  -  |

## prefsEventsWithHttpInfo

> ApiResponse<String> prefsEventsWithHttpInfo()

Live — which sections another client wrote.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.PrefsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        PrefsApi apiInstance = new PrefsApi(defaultClient);
        try {
            ApiResponse<String> response = apiInstance.prefsEventsWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling PrefsApi#prefsEvents");
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

ApiResponse<**String**>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;{ type: hello, revision, stamps }&#x60; first, then &#x60;{ type: changed, ... }&#x60;. |  -  |


## prefsGet

> Prefs prefsGet(section, stamps)

The shared sections, or only their stamps.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.PrefsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        PrefsApi apiInstance = new PrefsApi(defaultClient);
        String section = "section_example"; // String | 
        Boolean stamps = true; // Boolean | Only `{ revision, stamps }`.
        try {
            Prefs result = apiInstance.prefsGet(section, stamps);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling PrefsApi#prefsGet");
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
| **section** | **String**|  | [optional] |
| **stamps** | **Boolean**| Only &#x60;{ revision, stamps }&#x60;. | [optional] |

### Return type

[**Prefs**](Prefs.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The sections. |  -  |

## prefsGetWithHttpInfo

> ApiResponse<Prefs> prefsGetWithHttpInfo(section, stamps)

The shared sections, or only their stamps.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.PrefsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        PrefsApi apiInstance = new PrefsApi(defaultClient);
        String section = "section_example"; // String | 
        Boolean stamps = true; // Boolean | Only `{ revision, stamps }`.
        try {
            ApiResponse<Prefs> response = apiInstance.prefsGetWithHttpInfo(section, stamps);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling PrefsApi#prefsGet");
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
| **section** | **String**|  | [optional] |
| **stamps** | **Boolean**| Only &#x60;{ revision, stamps }&#x60;. | [optional] |

### Return type

ApiResponse<[**Prefs**](Prefs.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The sections. |  -  |


## prefsPut

> PrefsWriteResult prefsPut(prefsWrite)

Write sections; per-section last-writer-wins by stamp.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.PrefsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        PrefsApi apiInstance = new PrefsApi(defaultClient);
        PrefsWrite prefsWrite = new PrefsWrite(); // PrefsWrite | 
        try {
            PrefsWriteResult result = apiInstance.prefsPut(prefsWrite);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling PrefsApi#prefsPut");
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
| **prefsWrite** | [**PrefsWrite**](PrefsWrite.md)|  | |

### Return type

[**PrefsWriteResult**](PrefsWriteResult.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Which sections were applied and which were kept (newer on the gateway). |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

## prefsPutWithHttpInfo

> ApiResponse<PrefsWriteResult> prefsPutWithHttpInfo(prefsWrite)

Write sections; per-section last-writer-wins by stamp.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.PrefsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        PrefsApi apiInstance = new PrefsApi(defaultClient);
        PrefsWrite prefsWrite = new PrefsWrite(); // PrefsWrite | 
        try {
            ApiResponse<PrefsWriteResult> response = apiInstance.prefsPutWithHttpInfo(prefsWrite);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling PrefsApi#prefsPut");
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
| **prefsWrite** | [**PrefsWrite**](PrefsWrite.md)|  | |

### Return type

ApiResponse<[**PrefsWriteResult**](PrefsWriteResult.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Which sections were applied and which were kept (newer on the gateway). |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

