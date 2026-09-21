# \EventsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**events_cursor**](EventsApi.md#events_cursor) | **GET** /v1/events/cursor | The gateway's highest `seq` per host — what a client asks for before it pushes.
[**events_push**](EventsApi.md#events_push) | **POST** /v1/events | Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.
[**events_since**](EventsApi.md#events_since) | **GET** /v1/events | The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.
[**events_stats**](EventsApi.md#events_stats) | **GET** /v1/events/stats | What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.
[**events_stream**](EventsApi.md#events_stream) | **GET** /v1/events/stream | Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.



## events_cursor

> models::EventsCursor events_cursor()
The gateway's highest `seq` per host — what a client asks for before it pushes.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::EventsCursor**](EventsCursor.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## events_push

> models::PushEventsResponse events_push(push_events_request)
Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.

Idempotent on event id, so a retry is free. A `seq` that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in `cursor` (the gateway's highest `seq` per host) and stop re-sending what `rejected` names. At most 2000 events per batch. A gateway without SQLite answers 501.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**push_events_request** | [**PushEventsRequest**](PushEventsRequest.md) |  | [required] |

### Return type

[**models::PushEventsResponse**](PushEventsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## events_since

> models::EventsPage events_since(cursor, limit, host)
The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**cursor** | Option<**String**> | JSON `{ host: seq }` — the highest seq per host you already hold. Absent means everything. |  |
**limit** | Option<**i32**> |  |  |[default to 1000]
**host** | Option<**String**> | One host's slice only. |  |

### Return type

[**models::EventsPage**](EventsPage.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## events_stats

> models::EventsStats events_stats()
What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::EventsStats**](EventsStats.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## events_stream

> String events_stream(cursor)
Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**cursor** | Option<**String**> | JSON `{ host: seq }`; when present the events above it are replayed before live frames. |  |

### Return type

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

