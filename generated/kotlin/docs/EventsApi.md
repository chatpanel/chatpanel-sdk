# EventsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**eventsCursor**](EventsApi.md#eventsCursor) | **GET** /v1/events/cursor | The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes. |
| [**eventsDelete**](EventsApi.md#eventsDelete) | **DELETE** /v1/events | Delete one host&#39;s slice of the merged log, or the whole log — only with &#x60;force&#x3D;1&#x60;. |
| [**eventsPush**](EventsApi.md#eventsPush) | **POST** /v1/events | Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named. |
| [**eventsSince**](EventsApi.md#eventsSince) | **GET** /v1/events | The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged. |
| [**eventsStats**](EventsApi.md#eventsStats) | **GET** /v1/events/stats | What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap. |
| [**eventsStream**](EventsApi.md#eventsStream) | **GET** /v1/events/stream | Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first. |


<a id="eventsCursor"></a>
# **eventsCursor**
> EventsCursor eventsCursor()

The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EventsApi()
try {
    val result : EventsCursor = apiInstance.eventsCursor()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EventsApi#eventsCursor")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EventsApi#eventsCursor")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EventsCursor**](EventsCursor.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="eventsDelete"></a>
# **eventsDelete**
> EventsDeleted eventsDelete(host, all, force)

Delete one host&#39;s slice of the merged log, or the whole log — only with &#x60;force&#x3D;1&#x60;.

A client&#39;s \&quot;Clear activity\&quot; reaching the copy held here. Name exactly one of &#x60;host&#x60; or &#x60;all&#x3D;1&#x60;. Without &#x60;force&#x3D;1&#x60; nothing is deleted: the answer is 409 &#x60;confirm_required&#x60; with &#x60;wouldDelete&#x60;, so leaving the flag off (or sending &#x60;force&#x3D;0&#x60;) is a dry run, never a delete. The host&#39;s cursor entry goes with its events, so its next push starts afresh. A tailing stream gets a &#x60;deleted&#x60; frame. Idempotent: a host with nothing left deletes 0.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EventsApi()
val host : kotlin.String = host_example // kotlin.String | The host whose events go (a client's own `host`).
val all : kotlin.String = all_example // kotlin.String | Every host's events instead of one.
val force : kotlin.String = force_example // kotlin.String | Required to delete; anything else is a dry run answered 409.
try {
    val result : EventsDeleted = apiInstance.eventsDelete(host, all, force)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EventsApi#eventsDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EventsApi#eventsDelete")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **host** | **kotlin.String**| The host whose events go (a client&#39;s own &#x60;host&#x60;). | [optional] |
| **all** | **kotlin.String**| Every host&#39;s events instead of one. | [optional] [enum: 1, true, yes] |
| **force** | **kotlin.String**| Required to delete; anything else is a dry run answered 409. | [optional] [enum: 1, true, yes] |

### Return type

[**EventsDeleted**](EventsDeleted.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="eventsPush"></a>
# **eventsPush**
> PushEventsResponse eventsPush(pushEventsRequest)

Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named.

Idempotent on event id, so a retry is free. A &#x60;seq&#x60; that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in &#x60;cursor&#x60; (the gateway&#39;s highest &#x60;seq&#x60; per host) and stop re-sending what &#x60;rejected&#x60; names. At most 2000 events per batch. A gateway without SQLite answers 501.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EventsApi()
val pushEventsRequest : PushEventsRequest =  // PushEventsRequest | 
try {
    val result : PushEventsResponse = apiInstance.eventsPush(pushEventsRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EventsApi#eventsPush")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EventsApi#eventsPush")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pushEventsRequest** | [**PushEventsRequest**](PushEventsRequest.md)|  | |

### Return type

[**PushEventsResponse**](PushEventsResponse.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
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

<a id="eventsSince"></a>
# **eventsSince**
> EventsPage eventsSince(cursor, limit, host)

The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EventsApi()
val cursor : kotlin.String = cursor_example // kotlin.String | JSON `{ host: seq }` — the highest seq per host you already hold. Absent means everything.
val limit : kotlin.Int = 56 // kotlin.Int | 
val host : kotlin.String = host_example // kotlin.String | One host's slice only.
try {
    val result : EventsPage = apiInstance.eventsSince(cursor, limit, host)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EventsApi#eventsSince")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EventsApi#eventsSince")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **cursor** | **kotlin.String**| JSON &#x60;{ host: seq }&#x60; — the highest seq per host you already hold. Absent means everything. | [optional] |
| **limit** | **kotlin.Int**|  | [optional] [default to 1000] |
| **host** | **kotlin.String**| One host&#39;s slice only. | [optional] |

### Return type

[**EventsPage**](EventsPage.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="eventsStats"></a>
# **eventsStats**
> EventsStats eventsStats()

What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EventsApi()
try {
    val result : EventsStats = apiInstance.eventsStats()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EventsApi#eventsStats")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EventsApi#eventsStats")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EventsStats**](EventsStats.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="eventsStream"></a>
# **eventsStream**
> kotlin.String eventsStream(cursor)

Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = EventsApi()
val cursor : kotlin.String = cursor_example // kotlin.String | JSON `{ host: seq }`; when present the events above it are replayed before live frames.
try {
    val result : kotlin.String = apiInstance.eventsStream(cursor)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling EventsApi#eventsStream")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling EventsApi#eventsStream")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **cursor** | **kotlin.String**| JSON &#x60;{ host: seq }&#x60;; when present the events above it are replayed before live frames. | [optional] |

### Return type

**kotlin.String**

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

