# HistoryAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**historyGet**](HistoryAPI.md#historyget) | **GET** /v1/history/get | One full warm record, optionally paged by characters.
[**historyIngest**](HistoryAPI.md#historyingest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index.
[**historyList**](HistoryAPI.md#historylist) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies.
[**historyPutRecords**](HistoryAPI.md#historyputrecords) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself.
[**historyRecords**](HistoryAPI.md#historyrecords) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
[**historyRelated**](HistoryAPI.md#historyrelated) | **GET** /v1/history/related | The records most connected to one record.
[**historySearch**](HistoryAPI.md#historysearch) | **POST** /v1/history/search | One keyword query over the warm index.
[**historySmartSearch**](HistoryAPI.md#historysmartsearch) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead.
[**historyStatus**](HistoryAPI.md#historystatus) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0).
[**historyStream**](HistoryAPI.md#historystream) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change.


# **historyGet**
```swift
    open class func historyGet(id: String, maxChars: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: HistoryGet200Response?, _ error: Error?) -> Void)
```

One full warm record, optionally paged by characters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | 
let maxChars = 987 // Int | Page a long transcript instead of pulling it all. (optional)
let offset = 987 // Int |  (optional) (default to 0)

// One full warm record, optionally paged by characters.
HistoryAPI.historyGet(id: id, maxChars: maxChars, offset: offset) { (response, error) in
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
 **id** | **String** |  | 
 **maxChars** | **Int** | Page a long transcript instead of pulling it all. | [optional] 
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**HistoryGet200Response**](HistoryGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyIngest**
```swift
    open class func historyIngest(ingestRequest: IngestRequest, completion: @escaping (_ data: HistoryIngest200Response?, _ error: Error?) -> Void)
```

Push flattened (lossy) records into the warm index.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let ingestRequest = IngestRequest(upserts: [IngestRequest_upserts_inner(id: "id_example", title: "title_example", type: RecordType(), date: 123, text: "text_example")], removes: ["removes_example"]) // IngestRequest | 

// Push flattened (lossy) records into the warm index.
HistoryAPI.historyIngest(ingestRequest: ingestRequest) { (response, error) in
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
 **ingestRequest** | [**IngestRequest**](IngestRequest.md) |  | 

### Return type

[**HistoryIngest200Response**](HistoryIngest200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyList**
```swift
    open class func historyList(limit: Int? = nil, offset: Int? = nil, type: RecordType? = nil, completion: @escaping (_ data: HistoryPage?, _ error: Error?) -> Void)
```

A page of the warm index — metadata only, no bodies.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let limit = 987 // Int |  (optional) (default to 50)
let offset = 987 // Int |  (optional) (default to 0)
let type = RecordType() // RecordType |  (optional)

// A page of the warm index — metadata only, no bodies.
HistoryAPI.historyList(limit: limit, offset: offset, type: type) { (response, error) in
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
 **limit** | **Int** |  | [optional] [default to 50]
 **offset** | **Int** |  | [optional] [default to 0]
 **type** | [**RecordType**](.md) |  | [optional] 

### Return type

[**HistoryPage**](HistoryPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyPutRecords**
```swift
    open class func historyPutRecords(putRecordsRequest: PutRecordsRequest, completion: @escaping (_ data: PutRecordsResponse?, _ error: Error?) -> Void)
```

Push whole records; the gateway derives the searchable text itself.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let putRecordsRequest = PutRecordsRequest(host: "host_example", at: 123, records: ["TODO"], entries: ["TODO"]) // PutRecordsRequest | 

// Push whole records; the gateway derives the searchable text itself.
HistoryAPI.historyPutRecords(putRecordsRequest: putRecordsRequest) { (response, error) in
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
 **putRecordsRequest** | [**PutRecordsRequest**](PutRecordsRequest.md) |  | 

### Return type

[**PutRecordsResponse**](PutRecordsResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyRecords**
```swift
    open class func historyRecords(since: Int64? = nil, cursor: String? = nil, limit: Int? = nil, kind: String? = nil, completion: @escaping (_ data: RecordsPage?, _ error: Error?) -> Void)
```

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let since = 987 // Int64 | A stamp (ms since epoch) from a previous page's `newest`. (optional) (default to 0)
let cursor = "cursor_example" // String | Opaque; from the previous page. (optional)
let limit = 987 // Int |  (optional) (default to 200)
let kind = "kind_example" // String |  (optional)

// WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.
HistoryAPI.historyRecords(since: since, cursor: cursor, limit: limit, kind: kind) { (response, error) in
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
 **since** | **Int64** | A stamp (ms since epoch) from a previous page&#39;s &#x60;newest&#x60;. | [optional] [default to 0]
 **cursor** | **String** | Opaque; from the previous page. | [optional] 
 **limit** | **Int** |  | [optional] [default to 200]
 **kind** | **String** |  | [optional] 

### Return type

[**RecordsPage**](RecordsPage.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyRelated**
```swift
    open class func historyRelated(id: String, limit: Int? = nil, completion: @escaping (_ data: HistoryRelated200Response?, _ error: Error?) -> Void)
```

The records most connected to one record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | 
let limit = 987 // Int |  (optional) (default to 5)

// The records most connected to one record.
HistoryAPI.historyRelated(id: id, limit: limit) { (response, error) in
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
 **id** | **String** |  | 
 **limit** | **Int** |  | [optional] [default to 5]

### Return type

[**HistoryRelated200Response**](HistoryRelated200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historySearch**
```swift
    open class func historySearch(searchRequest: SearchRequest, completion: @escaping (_ data: SearchResponse?, _ error: Error?) -> Void)
```

One keyword query over the warm index.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let searchRequest = SearchRequest(type: RecordType(), since: 123, before: 123, limit: 123, query: "query_example", offset: 123) // SearchRequest | 

// One keyword query over the warm index.
HistoryAPI.historySearch(searchRequest: searchRequest) { (response, error) in
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
 **searchRequest** | [**SearchRequest**](SearchRequest.md) |  | 

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historySmartSearch**
```swift
    open class func historySmartSearch(smartSearchRequest: SmartSearchRequest, completion: @escaping (_ data: SmartSearchResponse?, _ error: Error?) -> Void)
```

Several phrasings at once, rank-fused; briefs lead.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let smartSearchRequest = SmartSearchRequest(type: RecordType(), since: 123, before: 123, limit: 123, question: "question_example", queries: ["queries_example"], maxQueries: 123) // SmartSearchRequest | 

// Several phrasings at once, rank-fused; briefs lead.
HistoryAPI.historySmartSearch(smartSearchRequest: smartSearchRequest) { (response, error) in
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
 **smartSearchRequest** | [**SmartSearchRequest**](SmartSearchRequest.md) |  | 

### Return type

[**SmartSearchResponse**](SmartSearchResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyStatus**
```swift
    open class func historyStatus(completion: @escaping (_ data: HistoryStatus?, _ error: Error?) -> Void)
```

Size and freshness of the warm index (and the lossless tier from 0.10.0).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Size and freshness of the warm index (and the lossless tier from 0.10.0).
HistoryAPI.historyStatus() { (response, error) in
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

[**HistoryStatus**](HistoryStatus.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **historyStream**
```swift
    open class func historyStream(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Live record changes — `hello` once, then a `records` event per change.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Live record changes — `hello` once, then a `records` event per change.
HistoryAPI.historyStream() { (response, error) in
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

**String**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

