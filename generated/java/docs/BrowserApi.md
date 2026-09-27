# BrowserApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**browserAnnounce**](BrowserApi.md#browserAnnounce) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance. |
| [**browserAnnounceWithHttpInfo**](BrowserApi.md#browserAnnounceWithHttpInfo) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance. |
| [**browserCall**](BrowserApi.md#browserCall) | **POST** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result. |
| [**browserCallWithHttpInfo**](BrowserApi.md#browserCallWithHttpInfo) | **POST** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result. |
| [**browserResult**](BrowserApi.md#browserResult) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it. |
| [**browserResultWithHttpInfo**](BrowserApi.md#browserResultWithHttpInfo) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it. |
| [**browserStatus**](BrowserApi.md#browserStatus) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers. |
| [**browserStatusWithHttpInfo**](BrowserApi.md#browserStatusWithHttpInfo) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers. |
| [**browserStream**](BrowserApi.md#browserStream) | **GET** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run. |
| [**browserStreamWithHttpInfo**](BrowserApi.md#browserStreamWithHttpInfo) | **GET** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run. |



## browserAnnounce

> BrowserAnnounce200Response browserAnnounce(browserAnnounce)

The browser says what it offers — its page tool spec and guidance.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        BrowserAnnounce browserAnnounce = new BrowserAnnounce(); // BrowserAnnounce | 
        try {
            BrowserAnnounce200Response result = apiInstance.browserAnnounce(browserAnnounce);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserAnnounce");
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
| **browserAnnounce** | [**BrowserAnnounce**](BrowserAnnounce.md)|  | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Accepted. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |

## browserAnnounceWithHttpInfo

> ApiResponse<BrowserAnnounce200Response> browserAnnounceWithHttpInfo(browserAnnounce)

The browser says what it offers — its page tool spec and guidance.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        BrowserAnnounce browserAnnounce = new BrowserAnnounce(); // BrowserAnnounce | 
        try {
            ApiResponse<BrowserAnnounce200Response> response = apiInstance.browserAnnounceWithHttpInfo(browserAnnounce);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserAnnounce");
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
| **browserAnnounce** | [**BrowserAnnounce**](BrowserAnnounce.md)|  | |

### Return type

ApiResponse<[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Accepted. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |


## browserCall

> BrowserCallResult browserCall(browserCall)

Run one page action in the person&#39;s browser and wait for its result.

Carried to the connected browser, which runs it on the task&#39;s own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to &#x60;timeoutMs&#x60; (default 120 s) because a confirmation is a person deciding. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        BrowserCall browserCall = new BrowserCall(); // BrowserCall | 
        try {
            BrowserCallResult result = apiInstance.browserCall(browserCall);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserCall");
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
| **browserCall** | [**BrowserCall**](BrowserCall.md)|  | |

### Return type

[**BrowserCallResult**](BrowserCallResult.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What the page action returned. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **504** | An error, in the gateway&#39;s words. |  -  |

## browserCallWithHttpInfo

> ApiResponse<BrowserCallResult> browserCallWithHttpInfo(browserCall)

Run one page action in the person&#39;s browser and wait for its result.

Carried to the connected browser, which runs it on the task&#39;s own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to &#x60;timeoutMs&#x60; (default 120 s) because a confirmation is a person deciding. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        BrowserCall browserCall = new BrowserCall(); // BrowserCall | 
        try {
            ApiResponse<BrowserCallResult> response = apiInstance.browserCallWithHttpInfo(browserCall);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserCall");
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
| **browserCall** | [**BrowserCall**](BrowserCall.md)|  | |

### Return type

ApiResponse<[**BrowserCallResult**](BrowserCallResult.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What the page action returned. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **504** | An error, in the gateway&#39;s words. |  -  |


## browserResult

> BrowserAnnounce200Response browserResult(browserResult)

The browser answers a call it ran. Only the session the call went to may answer it.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        BrowserResult browserResult = new BrowserResult(); // BrowserResult | 
        try {
            BrowserAnnounce200Response result = apiInstance.browserResult(browserResult);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserResult");
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
| **browserResult** | [**BrowserResult**](BrowserResult.md)|  | |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Accepted. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

## browserResultWithHttpInfo

> ApiResponse<BrowserAnnounce200Response> browserResultWithHttpInfo(browserResult)

The browser answers a call it ran. Only the session the call went to may answer it.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        BrowserResult browserResult = new BrowserResult(); // BrowserResult | 
        try {
            ApiResponse<BrowserAnnounce200Response> response = apiInstance.browserResultWithHttpInfo(browserResult);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserResult");
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
| **browserResult** | [**BrowserResult**](BrowserResult.md)|  | |

### Return type

ApiResponse<[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Accepted. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |


## browserStatus

> BrowserStatus browserStatus()

Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension&#39;s own — a client hands them to its model as they are.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        try {
            BrowserStatus result = apiInstance.browserStatus();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserStatus");
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

[**BrowserStatus**](BrowserStatus.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The connected browser, or &#x60;connected false&#x60;. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## browserStatusWithHttpInfo

> ApiResponse<BrowserStatus> browserStatusWithHttpInfo()

Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension&#39;s own — a client hands them to its model as they are.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        try {
            ApiResponse<BrowserStatus> response = apiInstance.browserStatusWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserStatus");
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

ApiResponse<[**BrowserStatus**](BrowserStatus.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The connected browser, or &#x60;connected false&#x60;. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |


## browserStream

> String browserStream()

The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        try {
            String result = apiInstance.browserStream();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserStream");
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

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;event: hello&#x60; &#x60;{ session, version }&#x60;, then &#x60;event: call&#x60; &#x60;{ id, action, args, task }&#x60;, &#x60;event: cancel&#x60; &#x60;{ id }&#x60; when a call timed out, &#x60;event: replaced&#x60; when a newer browser connected; a comment ping every 25 s. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

## browserStreamWithHttpInfo

> ApiResponse<String> browserStreamWithHttpInfo()

The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.BrowserApi;

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

        BrowserApi apiInstance = new BrowserApi(defaultClient);
        try {
            ApiResponse<String> response = apiInstance.browserStreamWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling BrowserApi#browserStream");
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

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;event: hello&#x60; &#x60;{ session, version }&#x60;, then &#x60;event: call&#x60; &#x60;{ id, action, args, task }&#x60;, &#x60;event: cancel&#x60; &#x60;{ id }&#x60; when a call timed out, &#x60;event: replaced&#x60; when a newer browser connected; a comment ping every 25 s. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

