# EventsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**eventsCursor**](EventsApi.md#eventsCursor) | **GET** /v1/events/cursor | The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes. |
| [**eventsCursorWithHttpInfo**](EventsApi.md#eventsCursorWithHttpInfo) | **GET** /v1/events/cursor | The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes. |
| [**eventsPush**](EventsApi.md#eventsPush) | **POST** /v1/events | Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named. |
| [**eventsPushWithHttpInfo**](EventsApi.md#eventsPushWithHttpInfo) | **POST** /v1/events | Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named. |
| [**eventsSince**](EventsApi.md#eventsSince) | **GET** /v1/events | The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged. |
| [**eventsSinceWithHttpInfo**](EventsApi.md#eventsSinceWithHttpInfo) | **GET** /v1/events | The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged. |
| [**eventsStats**](EventsApi.md#eventsStats) | **GET** /v1/events/stats | What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap. |
| [**eventsStatsWithHttpInfo**](EventsApi.md#eventsStatsWithHttpInfo) | **GET** /v1/events/stats | What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap. |
| [**eventsStream**](EventsApi.md#eventsStream) | **GET** /v1/events/stream | Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first. |
| [**eventsStreamWithHttpInfo**](EventsApi.md#eventsStreamWithHttpInfo) | **GET** /v1/events/stream | Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first. |



## eventsCursor

> EventsCursor eventsCursor()

The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        try {
            EventsCursor result = apiInstance.eventsCursor();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsCursor");
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

[**EventsCursor**](EventsCursor.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The cursor and the log&#39;s size. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

## eventsCursorWithHttpInfo

> ApiResponse<EventsCursor> eventsCursorWithHttpInfo()

The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        try {
            ApiResponse<EventsCursor> response = apiInstance.eventsCursorWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsCursor");
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

ApiResponse<[**EventsCursor**](EventsCursor.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The cursor and the log&#39;s size. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |


## eventsPush

> PushEventsResponse eventsPush(pushEventsRequest)

Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named.

Idempotent on event id, so a retry is free. A &#x60;seq&#x60; that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in &#x60;cursor&#x60; (the gateway&#39;s highest &#x60;seq&#x60; per host) and stop re-sending what &#x60;rejected&#x60; names. At most 2000 events per batch. A gateway without SQLite answers 501.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        PushEventsRequest pushEventsRequest = new PushEventsRequest(); // PushEventsRequest | 
        try {
            PushEventsResponse result = apiInstance.eventsPush(pushEventsRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsPush");
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
| **pushEventsRequest** | [**PushEventsRequest**](PushEventsRequest.md)|  | |

### Return type

[**PushEventsResponse**](PushEventsResponse.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What the batch did, and the cursor afterwards. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **413** | An error, in the gateway&#39;s words. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

## eventsPushWithHttpInfo

> ApiResponse<PushEventsResponse> eventsPushWithHttpInfo(pushEventsRequest)

Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named.

Idempotent on event id, so a retry is free. A &#x60;seq&#x60; that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in &#x60;cursor&#x60; (the gateway&#39;s highest &#x60;seq&#x60; per host) and stop re-sending what &#x60;rejected&#x60; names. At most 2000 events per batch. A gateway without SQLite answers 501.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        PushEventsRequest pushEventsRequest = new PushEventsRequest(); // PushEventsRequest | 
        try {
            ApiResponse<PushEventsResponse> response = apiInstance.eventsPushWithHttpInfo(pushEventsRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsPush");
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
| **pushEventsRequest** | [**PushEventsRequest**](PushEventsRequest.md)|  | |

### Return type

ApiResponse<[**PushEventsResponse**](PushEventsResponse.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What the batch did, and the cursor afterwards. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **413** | An error, in the gateway&#39;s words. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |


## eventsSince

> EventsPage eventsSince(cursor, limit, host)

The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        String cursor = "cursor_example"; // String | JSON `{ host: seq }` — the highest seq per host you already hold. Absent means everything.
        Integer limit = 1000; // Integer | 
        String host = "host_example"; // String | One host's slice only.
        try {
            EventsPage result = apiInstance.eventsSince(cursor, limit, host);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsSince");
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
| **cursor** | **String**| JSON &#x60;{ host: seq }&#x60; — the highest seq per host you already hold. Absent means everything. | [optional] |
| **limit** | **Integer**|  | [optional] [default to 1000] |
| **host** | **String**| One host&#39;s slice only. | [optional] |

### Return type

[**EventsPage**](EventsPage.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A page; re-ask with the returned &#x60;cursor&#x60; while &#x60;more&#x60; is true. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

## eventsSinceWithHttpInfo

> ApiResponse<EventsPage> eventsSinceWithHttpInfo(cursor, limit, host)

The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        String cursor = "cursor_example"; // String | JSON `{ host: seq }` — the highest seq per host you already hold. Absent means everything.
        Integer limit = 1000; // Integer | 
        String host = "host_example"; // String | One host's slice only.
        try {
            ApiResponse<EventsPage> response = apiInstance.eventsSinceWithHttpInfo(cursor, limit, host);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsSince");
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
| **cursor** | **String**| JSON &#x60;{ host: seq }&#x60; — the highest seq per host you already hold. Absent means everything. | [optional] |
| **limit** | **Integer**|  | [optional] [default to 1000] |
| **host** | **String**| One host&#39;s slice only. | [optional] |

### Return type

ApiResponse<[**EventsPage**](EventsPage.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A page; re-ask with the returned &#x60;cursor&#x60; while &#x60;more&#x60; is true. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |


## eventsStats

> EventsStats eventsStats()

What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        try {
            EventsStats result = apiInstance.eventsStats();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsStats");
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

[**EventsStats**](EventsStats.md)


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The numbers, over the retained log (at most the last 25 000 events). |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

## eventsStatsWithHttpInfo

> ApiResponse<EventsStats> eventsStatsWithHttpInfo()

What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        try {
            ApiResponse<EventsStats> response = apiInstance.eventsStatsWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsStats");
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

ApiResponse<[**EventsStats**](EventsStats.md)>


### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The numbers, over the retained log (at most the last 25 000 events). |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |


## eventsStream

> String eventsStream(cursor)

Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        String cursor = "cursor_example"; // String | JSON `{ host: seq }`; when present the events above it are replayed before live frames.
        try {
            String result = apiInstance.eventsStream(cursor);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsStream");
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
| **cursor** | **String**| JSON &#x60;{ host: seq }&#x60;; when present the events above it are replayed before live frames. | [optional] |

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
| **200** | &#x60;event: hello&#x60; &#x60;{ cursor, count, version }&#x60;, then &#x60;event: cloudevent&#x60; with one CloudEvents 1.0 JSON object as data; a comment ping every 25 s. A reader appends by id, so a duplicate on the wire is harmless. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

## eventsStreamWithHttpInfo

> ApiResponse<String> eventsStreamWithHttpInfo(cursor)

Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.EventsApi;

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

        EventsApi apiInstance = new EventsApi(defaultClient);
        String cursor = "cursor_example"; // String | JSON `{ host: seq }`; when present the events above it are replayed before live frames.
        try {
            ApiResponse<String> response = apiInstance.eventsStreamWithHttpInfo(cursor);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling EventsApi#eventsStream");
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
| **cursor** | **String**| JSON &#x60;{ host: seq }&#x60;; when present the events above it are replayed before live frames. | [optional] |

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
| **200** | &#x60;event: hello&#x60; &#x60;{ cursor, count, version }&#x60;, then &#x60;event: cloudevent&#x60; with one CloudEvents 1.0 JSON object as data; a comment ping every 25 s. A reader appends by id, so a duplicate on the wire is harmless. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

