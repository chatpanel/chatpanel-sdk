# ChatPanel.Sdk.Api.HistoryApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**HistoryGet**](HistoryApi.md#historyget) | **GET** /v1/history/get | One full warm record, optionally paged by characters. |
| [**HistoryIngest**](HistoryApi.md#historyingest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index. |
| [**HistoryList**](HistoryApi.md#historylist) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies. |
| [**HistoryPutRecords**](HistoryApi.md#historyputrecords) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself. |
| [**HistoryRecords**](HistoryApi.md#historyrecords) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included. |
| [**HistoryRelated**](HistoryApi.md#historyrelated) | **GET** /v1/history/related | The records most connected to one record. |
| [**HistorySearch**](HistoryApi.md#historysearch) | **POST** /v1/history/search | One keyword query over the warm index. |
| [**HistorySmartSearch**](HistoryApi.md#historysmartsearch) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead. |
| [**HistoryStatus**](HistoryApi.md#historystatus) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0). |
| [**HistoryStream**](HistoryApi.md#historystream) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change. |

<a id="historyget"></a>
# **HistoryGet**
> HistoryGet200Response HistoryGet (string id, int maxChars = null, int offset = null)

One full warm record, optionally paged by characters.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |
| **maxChars** | **int** | Page a long transcript instead of pulling it all. | [optional]  |
| **offset** | **int** |  | [optional] [default to 0] |

### Return type

[**HistoryGet200Response**](HistoryGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The record. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historyingest"></a>
# **HistoryIngest**
> HistoryIngest200Response HistoryIngest (IngestRequest ingestRequest)

Push flattened (lossy) records into the warm index.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **ingestRequest** | [**IngestRequest**](IngestRequest.md) |  |  |

### Return type

[**HistoryIngest200Response**](HistoryIngest200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The index size after the write. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historylist"></a>
# **HistoryList**
> HistoryPage HistoryList (int limit = null, int offset = null, RecordType type = null)

A page of the warm index — metadata only, no bodies.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **limit** | **int** |  | [optional] [default to 50] |
| **offset** | **int** |  | [optional] [default to 0] |
| **type** | **RecordType** |  | [optional]  |

### Return type

[**HistoryPage**](HistoryPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The page. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historyputrecords"></a>
# **HistoryPutRecords**
> PutRecordsResponse HistoryPutRecords (PutRecordsRequest putRecordsRequest)

Push whole records; the gateway derives the searchable text itself.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **putRecordsRequest** | [**PutRecordsRequest**](PutRecordsRequest.md) |  |  |

### Return type

[**PutRecordsResponse**](PutRecordsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What was written. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historyrecords"></a>
# **HistoryRecords**
> RecordsPage HistoryRecords (long since = null, string cursor = null, int limit = null, string kind = null)

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **since** | **long** | A stamp (ms since epoch) from a previous page&#39;s &#x60;newest&#x60;. | [optional] [default to 0] |
| **cursor** | **string** | Opaque; from the previous page. | [optional]  |
| **limit** | **int** |  | [optional] [default to 200] |
| **kind** | **string** |  | [optional]  |

### Return type

[**RecordsPage**](RecordsPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A page of whole records. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historyrelated"></a>
# **HistoryRelated**
> HistoryRelated200Response HistoryRelated (string id, int limit = null)

The records most connected to one record.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |
| **limit** | **int** |  | [optional] [default to 5] |

### Return type

[**HistoryRelated200Response**](HistoryRelated200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Neighbours. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historysearch"></a>
# **HistorySearch**
> SearchResponse HistorySearch (SearchRequest searchRequest)

One keyword query over the warm index.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **searchRequest** | [**SearchRequest**](SearchRequest.md) |  |  |

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Ranked snippets. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historysmartsearch"></a>
# **HistorySmartSearch**
> SmartSearchResponse HistorySmartSearch (SmartSearchRequest smartSearchRequest)

Several phrasings at once, rank-fused; briefs lead.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **smartSearchRequest** | [**SmartSearchRequest**](SmartSearchRequest.md) |  |  |

### Return type

[**SmartSearchResponse**](SmartSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Fused results and the queries that were run. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historystatus"></a>
# **HistoryStatus**
> HistoryStatus HistoryStatus ()

Size and freshness of the warm index (and the lossless tier from 0.10.0).


### Parameters
This endpoint does not need any parameter.
### Return type

[**HistoryStatus**](HistoryStatus.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="historystream"></a>
# **HistoryStream**
> string HistoryStream ()

Live record changes — `hello` once, then a `records` event per change.


### Parameters
This endpoint does not need any parameter.
### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;event: hello&#x60; &#x60;{ newest, size, version }&#x60;, then &#x60;event: records&#x60; &#x60;{ newest, size, ids, at }&#x60;; a comment ping every 25 s. |  -  |
| **501** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

