# ChatPanel.Sdk.Api.EventsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**EventsCursor**](EventsApi.md#eventscursor) | **GET** /v1/events/cursor | The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes. |
| [**EventsPush**](EventsApi.md#eventspush) | **POST** /v1/events | Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named. |
| [**EventsSince**](EventsApi.md#eventssince) | **GET** /v1/events | The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged. |
| [**EventsStats**](EventsApi.md#eventsstats) | **GET** /v1/events/stats | What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap. |
| [**EventsStream**](EventsApi.md#eventsstream) | **GET** /v1/events/stream | Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first. |

<a id="eventscursor"></a>
# **EventsCursor**
> EventsCursor EventsCursor ()

The gateway's highest `seq` per host — what a client asks for before it pushes.


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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="eventspush"></a>
# **EventsPush**
> PushEventsResponse EventsPush (PushEventsRequest pushEventsRequest)

Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.

Idempotent on event id, so a retry is free. A `seq` that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in `cursor` (the gateway's highest `seq` per host) and stop re-sending what `rejected` names. At most 2000 events per batch. A gateway without SQLite answers 501.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **pushEventsRequest** | [**PushEventsRequest**](PushEventsRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="eventssince"></a>
# **EventsSince**
> EventsPage EventsSince (string cursor = null, int limit = null, string host = null)

The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **cursor** | **string** | JSON &#x60;{ host: seq }&#x60; — the highest seq per host you already hold. Absent means everything. | [optional]  |
| **limit** | **int** |  | [optional] [default to 1000] |
| **host** | **string** | One host&#39;s slice only. | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="eventsstats"></a>
# **EventsStats**
> EventsStats EventsStats ()

What the merged log measures — bytes and events per turn, per surface, per host and per day; the dedup hit-rate; tool calls; a year projected against the cap.


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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="eventsstream"></a>
# **EventsStream**
> string EventsStream (string cursor = null)

Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **cursor** | **string** | JSON &#x60;{ host: seq }&#x60;; when present the events above it are replayed before live frames. | [optional]  |

### Return type

**string**

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

