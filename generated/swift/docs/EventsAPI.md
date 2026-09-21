# EventsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eventsCursor**](EventsAPI.md#eventscursor) | **GET** /v1/events/cursor | The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes.
[**eventsPush**](EventsAPI.md#eventspush) | **POST** /v1/events | Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named.
[**eventsSince**](EventsAPI.md#eventssince) | **GET** /v1/events | The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged.
[**eventsStats**](EventsAPI.md#eventsstats) | **GET** /v1/events/stats | What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.
[**eventsStream**](EventsAPI.md#eventsstream) | **GET** /v1/events/stream | Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first.


# **eventsCursor**
```swift
    open class func eventsCursor(completion: @escaping (_ data: EventsCursor?, _ error: Error?) -> Void)
```

The gateway's highest `seq` per host — what a client asks for before it pushes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// The gateway's highest `seq` per host — what a client asks for before it pushes.
EventsAPI.eventsCursor() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventsPush**
```swift
    open class func eventsPush(pushEventsRequest: PushEventsRequest, completion: @escaping (_ data: PushEventsResponse?, _ error: Error?) -> Void)
```

Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.

Idempotent on event id, so a retry is free. A `seq` that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in `cursor` (the gateway's highest `seq` per host) and stop re-sending what `rejected` names. At most 2000 events per batch. A gateway without SQLite answers 501.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let pushEventsRequest = PushEventsRequest(events: [CloudEvent(specversion: "specversion_example", id: "id_example", source: "source_example", type: "type_example", time: Date(), datacontenttype: "datacontenttype_example", seq: 123, host: "host_example", causes: "causes_example", chatpanelv: 123, data: "TODO")]) // PushEventsRequest | 

// Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.
EventsAPI.eventsPush(pushEventsRequest: pushEventsRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pushEventsRequest** | [**PushEventsRequest**](PushEventsRequest.md) |  | 

### Return type

[**PushEventsResponse**](PushEventsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventsSince**
```swift
    open class func eventsSince(cursor: String? = nil, limit: Int? = nil, host: String? = nil, completion: @escaping (_ data: EventsPage?, _ error: Error?) -> Void)
```

The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let cursor = "cursor_example" // String | JSON `{ host: seq }` — the highest seq per host you already hold. Absent means everything. (optional)
let limit = 987 // Int |  (optional) (default to 1000)
let host = "host_example" // String | One host's slice only. (optional)

// The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.
EventsAPI.eventsSince(cursor: cursor, limit: limit, host: host) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String** | JSON &#x60;{ host: seq }&#x60; — the highest seq per host you already hold. Absent means everything. | [optional] 
 **limit** | **Int** |  | [optional] [default to 1000]
 **host** | **String** | One host&#39;s slice only. | [optional] 

### Return type

[**EventsPage**](EventsPage.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventsStats**
```swift
    open class func eventsStats(completion: @escaping (_ data: EventsStats?, _ error: Error?) -> Void)
```

What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.
EventsAPI.eventsStats() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventsStream**
```swift
    open class func eventsStream(cursor: String? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let cursor = "cursor_example" // String | JSON `{ host: seq }`; when present the events above it are replayed before live frames. (optional)

// Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.
EventsAPI.eventsStream(cursor: cursor) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String** | JSON &#x60;{ host: seq }&#x60;; when present the events above it are replayed before live frames. | [optional] 

### Return type

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

