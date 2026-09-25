# A2aApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**a2aAgents**](A2aApi.md#a2aAgents) | **GET** /a2a/agents | Every remote agent this gateway has spoken to. |
| [**a2aAgentsWithHttpInfo**](A2aApi.md#a2aAgentsWithHttpInfo) | **GET** /a2a/agents | Every remote agent this gateway has spoken to. |
| [**a2aCard**](A2aApi.md#a2aCard) | **POST** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held. |
| [**a2aCardWithHttpInfo**](A2aApi.md#a2aCardWithHttpInfo) | **POST** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held. |
| [**a2aMessage**](A2aApi.md#a2aMessage) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer. |
| [**a2aMessageWithHttpInfo**](A2aApi.md#a2aMessageWithHttpInfo) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer. |
| [**a2aStream**](A2aApi.md#a2aStream) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced. |
| [**a2aStreamWithHttpInfo**](A2aApi.md#a2aStreamWithHttpInfo) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced. |
| [**a2aTask**](A2aApi.md#a2aTask) | **POST** /a2a/task | Poll or cancel a task on a remote agent. |
| [**a2aTaskWithHttpInfo**](A2aApi.md#a2aTaskWithHttpInfo) | **POST** /a2a/task | Poll or cancel a task on a remote agent. |



## a2aAgents

> A2aAgents200Response a2aAgents()

Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        try {
            A2aAgents200Response result = apiInstance.a2aAgents();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aAgents");
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

[**A2aAgents200Response**](A2aAgents200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The agents. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |

## a2aAgentsWithHttpInfo

> ApiResponse<A2aAgents200Response> a2aAgentsWithHttpInfo()

Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        try {
            ApiResponse<A2aAgents200Response> response = apiInstance.a2aAgentsWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aAgents");
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

ApiResponse<[**A2aAgents200Response**](A2aAgents200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The agents. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |


## a2aCard

> A2aCard200Response a2aCard(a2aCardRequest)

Fetch a remote agent&#39;s card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with &#x60;If-None-Match&#x60;, so &#x60;fresh: false&#x60; means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        A2aCardRequest a2aCardRequest = new A2aCardRequest(); // A2aCardRequest | 
        try {
            A2aCard200Response result = apiInstance.a2aCard(a2aCardRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aCard");
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
| **a2aCardRequest** | [**A2aCardRequest**](A2aCardRequest.md)|  | |

### Return type

[**A2aCard200Response**](A2aCard200Response.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## a2aCardWithHttpInfo

> ApiResponse<A2aCard200Response> a2aCardWithHttpInfo(a2aCardRequest)

Fetch a remote agent&#39;s card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with &#x60;If-None-Match&#x60;, so &#x60;fresh: false&#x60; means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        A2aCardRequest a2aCardRequest = new A2aCardRequest(); // A2aCardRequest | 
        try {
            ApiResponse<A2aCard200Response> response = apiInstance.a2aCardWithHttpInfo(a2aCardRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aCard");
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
| **a2aCardRequest** | [**A2aCardRequest**](A2aCardRequest.md)|  | |

### Return type

ApiResponse<[**A2aCard200Response**](A2aCard200Response.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |


## a2aMessage

> A2AResult a2aMessage(a2ASendRequest)

Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so &#x60;kind&#x60; says which. &#x60;text&#x60; and &#x60;needs&#x60; are derived here rather than by each caller: &#x60;needs&#x60; is &#x60;answer&#x60; for an input stop and &#x60;approval&#x60; for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        A2ASendRequest a2ASendRequest = new A2ASendRequest(); // A2ASendRequest | 
        try {
            A2AResult result = apiInstance.a2aMessage(a2ASendRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aMessage");
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
| **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md)|  | |

### Return type

[**A2AResult**](A2AResult.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The answer. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## a2aMessageWithHttpInfo

> ApiResponse<A2AResult> a2aMessageWithHttpInfo(a2ASendRequest)

Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so &#x60;kind&#x60; says which. &#x60;text&#x60; and &#x60;needs&#x60; are derived here rather than by each caller: &#x60;needs&#x60; is &#x60;answer&#x60; for an input stop and &#x60;approval&#x60; for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        A2ASendRequest a2ASendRequest = new A2ASendRequest(); // A2ASendRequest | 
        try {
            ApiResponse<A2AResult> response = apiInstance.a2aMessageWithHttpInfo(a2ASendRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aMessage");
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
| **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md)|  | |

### Return type

ApiResponse<[**A2AResult**](A2AResult.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The answer. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |


## a2aStream

> String a2aStream(a2ASendRequest)

Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — &#x60;task&#x60;, &#x60;status&#x60;, &#x60;artifact&#x60;, &#x60;message&#x60;, then &#x60;done&#x60; with the final result (or &#x60;error&#x60;). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise &#x60;capabilities.streaming&#x60;.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        A2ASendRequest a2ASendRequest = new A2ASendRequest(); // A2ASendRequest | 
        try {
            String result = apiInstance.a2aStream(a2ASendRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aStream");
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
| **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md)|  | |

### Return type

**String**


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/event-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An event stream. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |

## a2aStreamWithHttpInfo

> ApiResponse<String> a2aStreamWithHttpInfo(a2ASendRequest)

Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — &#x60;task&#x60;, &#x60;status&#x60;, &#x60;artifact&#x60;, &#x60;message&#x60;, then &#x60;done&#x60; with the final result (or &#x60;error&#x60;). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise &#x60;capabilities.streaming&#x60;.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        A2ASendRequest a2ASendRequest = new A2ASendRequest(); // A2ASendRequest | 
        try {
            ApiResponse<String> response = apiInstance.a2aStreamWithHttpInfo(a2ASendRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aStream");
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
| **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md)|  | |

### Return type

ApiResponse<**String**>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/event-stream, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An event stream. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |


## a2aTask

> A2AResult a2aTask(a2aTaskRequest)

Poll or cancel a task on a remote agent.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        A2aTaskRequest a2aTaskRequest = new A2aTaskRequest(); // A2aTaskRequest | 
        try {
            A2AResult result = apiInstance.a2aTask(a2aTaskRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aTask");
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
| **a2aTaskRequest** | [**A2aTaskRequest**](A2aTaskRequest.md)|  | |

### Return type

[**A2AResult**](A2AResult.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The task. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

## a2aTaskWithHttpInfo

> ApiResponse<A2AResult> a2aTaskWithHttpInfo(a2aTaskRequest)

Poll or cancel a task on a remote agent.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.A2aApi;

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

        A2aApi apiInstance = new A2aApi(defaultClient);
        A2aTaskRequest a2aTaskRequest = new A2aTaskRequest(); // A2aTaskRequest | 
        try {
            ApiResponse<A2AResult> response = apiInstance.a2aTaskWithHttpInfo(a2aTaskRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling A2aApi#a2aTask");
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
| **a2aTaskRequest** | [**A2aTaskRequest**](A2aTaskRequest.md)|  | |

### Return type

ApiResponse<[**A2AResult**](A2AResult.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The task. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

