# \HistoryApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**history_get**](HistoryApi.md#history_get) | **GET** /v1/history/get | One full warm record, optionally paged by characters.
[**history_ingest**](HistoryApi.md#history_ingest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index.
[**history_list**](HistoryApi.md#history_list) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies.
[**history_put_records**](HistoryApi.md#history_put_records) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself.
[**history_records**](HistoryApi.md#history_records) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
[**history_related**](HistoryApi.md#history_related) | **GET** /v1/history/related | The records most connected to one record.
[**history_search**](HistoryApi.md#history_search) | **POST** /v1/history/search | One keyword query over the warm index.
[**history_smart_search**](HistoryApi.md#history_smart_search) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead.
[**history_status**](HistoryApi.md#history_status) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0).
[**history_stream**](HistoryApi.md#history_stream) | **GET** /v1/history/stream | Live record changes — `hello` once, then a `records` event per change.



## history_get

> models::HistoryGet200Response history_get(id, max_chars, offset)
One full warm record, optionally paged by characters.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** |  | [required] |
**max_chars** | Option<**i32**> | Page a long transcript instead of pulling it all. |  |
**offset** | Option<**i32**> |  |  |[default to 0]

### Return type

[**models::HistoryGet200Response**](history_get_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_ingest

> models::HistoryIngest200Response history_ingest(ingest_request)
Push flattened (lossy) records into the warm index.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ingest_request** | [**IngestRequest**](IngestRequest.md) |  | [required] |

### Return type

[**models::HistoryIngest200Response**](history_ingest_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_list

> models::HistoryPage history_list(limit, offset, r#type)
A page of the warm index — metadata only, no bodies.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**limit** | Option<**i32**> |  |  |[default to 50]
**offset** | Option<**i32**> |  |  |[default to 0]
**r#type** | Option<[**RecordType**](RecordType.md)> |  |  |

### Return type

[**models::HistoryPage**](HistoryPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_put_records

> models::PutRecordsResponse history_put_records(put_records_request)
Push whole records; the gateway derives the searchable text itself.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**put_records_request** | [**PutRecordsRequest**](PutRecordsRequest.md) |  | [required] |

### Return type

[**models::PutRecordsResponse**](PutRecordsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_records

> models::RecordsPage history_records(since, cursor, limit, kind)
WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**since** | Option<**i64**> | A stamp (ms since epoch) from a previous page's `newest`. |  |[default to 0]
**cursor** | Option<**String**> | Opaque; from the previous page. |  |
**limit** | Option<**i32**> |  |  |[default to 200]
**kind** | Option<**String**> |  |  |

### Return type

[**models::RecordsPage**](RecordsPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_related

> models::HistoryRelated200Response history_related(id, limit)
The records most connected to one record.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** |  | [required] |
**limit** | Option<**i32**> |  |  |[default to 5]

### Return type

[**models::HistoryRelated200Response**](history_related_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_search

> models::SearchResponse history_search(search_request)
One keyword query over the warm index.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**search_request** | [**SearchRequest**](SearchRequest.md) |  | [required] |

### Return type

[**models::SearchResponse**](SearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_smart_search

> models::SmartSearchResponse history_smart_search(smart_search_request)
Several phrasings at once, rank-fused; briefs lead.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**smart_search_request** | [**SmartSearchRequest**](SmartSearchRequest.md) |  | [required] |

### Return type

[**models::SmartSearchResponse**](SmartSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_status

> models::HistoryStatus history_status()
Size and freshness of the warm index (and the lossless tier from 0.10.0).

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::HistoryStatus**](HistoryStatus.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## history_stream

> String history_stream()
Live record changes — `hello` once, then a `records` event per change.

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

