# chatpanel.api.HistoryApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**historyGet**](HistoryApi.md#historyget) | **GET** /v1/history/get | One full warm record, optionally paged by characters.
[**historyIngest**](HistoryApi.md#historyingest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index.
[**historyList**](HistoryApi.md#historylist) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies.
[**historyPutRecords**](HistoryApi.md#historyputrecords) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself.
[**historyRecords**](HistoryApi.md#historyrecords) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
[**historyRelated**](HistoryApi.md#historyrelated) | **GET** /v1/history/related | The records most connected to one record.
[**historySearch**](HistoryApi.md#historysearch) | **POST** /v1/history/search | One keyword query over the warm index.
[**historySmartSearch**](HistoryApi.md#historysmartsearch) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead.
[**historyStatus**](HistoryApi.md#historystatus) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0).
[**historyStream**](HistoryApi.md#historystream) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change.


# **historyGet**
> HistoryGet200Response historyGet(id, maxChars, offset)

One full warm record, optionally paged by characters.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getHistoryApi();
final String id = id_example; // String | 
final int maxChars = 56; // int | Page a long transcript instead of pulling it all.
final int offset = 56; // int | 

try {
    final response = api.historyGet(id, maxChars, offset);
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **maxChars** | **int**| Page a long transcript instead of pulling it all. | [optional] 
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**HistoryGet200Response**](HistoryGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyIngest**
> HistoryIngest200Response historyIngest(ingestRequest)

Push flattened (lossy) records into the warm index.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getHistoryApi();
final IngestRequest ingestRequest = ; // IngestRequest | 

try {
    final response = api.historyIngest(ingestRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historyIngest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingestRequest** | [**IngestRequest**](IngestRequest.md)|  | 

### Return type

[**HistoryIngest200Response**](HistoryIngest200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyList**
> HistoryPage historyList(limit, offset, type)

A page of the warm index — metadata only, no bodies.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getHistoryApi();
final int limit = 56; // int | 
final int offset = 56; // int | 
final RecordType type = ; // RecordType | 

try {
    final response = api.historyList(limit, offset, type);
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historyList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] [default to 50]
 **offset** | **int**|  | [optional] [default to 0]
 **type** | [**RecordType**](.md)|  | [optional] 

### Return type

[**HistoryPage**](HistoryPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyPutRecords**
> PutRecordsResponse historyPutRecords(putRecordsRequest)

Push whole records; the gateway derives the searchable text itself.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getHistoryApi();
final PutRecordsRequest putRecordsRequest = ; // PutRecordsRequest | 

try {
    final response = api.historyPutRecords(putRecordsRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historyPutRecords: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **putRecordsRequest** | [**PutRecordsRequest**](PutRecordsRequest.md)|  | 

### Return type

[**PutRecordsResponse**](PutRecordsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyRecords**
> RecordsPage historyRecords(since, cursor, limit, kind)

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getHistoryApi();
final int since = 789; // int | A stamp (ms since epoch) from a previous page's `newest`.
final String cursor = cursor_example; // String | Opaque; from the previous page.
final int limit = 56; // int | 
final String kind = kind_example; // String | 

try {
    final response = api.historyRecords(since, cursor, limit, kind);
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historyRecords: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **since** | **int**| A stamp (ms since epoch) from a previous page's `newest`. | [optional] [default to 0]
 **cursor** | **String**| Opaque; from the previous page. | [optional] 
 **limit** | **int**|  | [optional] [default to 200]
 **kind** | **String**|  | [optional] 

### Return type

[**RecordsPage**](RecordsPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyRelated**
> HistoryRelated200Response historyRelated(id, limit)

The records most connected to one record.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getHistoryApi();
final String id = id_example; // String | 
final int limit = 56; // int | 

try {
    final response = api.historyRelated(id, limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historyRelated: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **limit** | **int**|  | [optional] [default to 5]

### Return type

[**HistoryRelated200Response**](HistoryRelated200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historySearch**
> SearchResponse historySearch(searchRequest)

One keyword query over the warm index.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getHistoryApi();
final SearchRequest searchRequest = ; // SearchRequest | 

try {
    final response = api.historySearch(searchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historySearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchRequest** | [**SearchRequest**](SearchRequest.md)|  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historySmartSearch**
> SmartSearchResponse historySmartSearch(smartSearchRequest)

Several phrasings at once, rank-fused; briefs lead.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getHistoryApi();
final SmartSearchRequest smartSearchRequest = ; // SmartSearchRequest | 

try {
    final response = api.historySmartSearch(smartSearchRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historySmartSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smartSearchRequest** | [**SmartSearchRequest**](SmartSearchRequest.md)|  | 

### Return type

[**SmartSearchResponse**](SmartSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyStatus**
> HistoryStatus historyStatus()

Size and freshness of the warm index (and the lossless tier from 0.10.0).

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getHistoryApi();

try {
    final response = api.historyStatus();
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historyStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HistoryStatus**](HistoryStatus.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyStream**
> String historyStream()

Live record changes — `hello` once, then a `records` event per change.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getHistoryApi();

try {
    final response = api.historyStream();
    print(response);
} on DioException catch (e) {
    print('Exception when calling HistoryApi->historyStream: $e\n');
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
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

