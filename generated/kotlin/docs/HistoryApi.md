# HistoryApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**historyGet**](HistoryApi.md#historyGet) | **GET** /v1/history/get | One full warm record, optionally paged by characters. |
| [**historyIngest**](HistoryApi.md#historyIngest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index. |
| [**historyList**](HistoryApi.md#historyList) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies. |
| [**historyPutRecords**](HistoryApi.md#historyPutRecords) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself. |
| [**historyRecords**](HistoryApi.md#historyRecords) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included. |
| [**historyRelated**](HistoryApi.md#historyRelated) | **GET** /v1/history/related | The records most connected to one record. |
| [**historySearch**](HistoryApi.md#historySearch) | **POST** /v1/history/search | One keyword query over the warm index. |
| [**historySmartSearch**](HistoryApi.md#historySmartSearch) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead. |
| [**historyStatus**](HistoryApi.md#historyStatus) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0). |
| [**historyStream**](HistoryApi.md#historyStream) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change. |


<a id="historyGet"></a>
# **historyGet**
> HistoryGet200Response historyGet(id, maxChars, offset)

One full warm record, optionally paged by characters.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
val id : kotlin.String = id_example // kotlin.String | 
val maxChars : kotlin.Int = 56 // kotlin.Int | Page a long transcript instead of pulling it all.
val offset : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : HistoryGet200Response = apiInstance.historyGet(id, maxChars, offset)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historyGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historyGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |
| **maxChars** | **kotlin.Int**| Page a long transcript instead of pulling it all. | [optional] |
| **offset** | **kotlin.Int**|  | [optional] [default to 0] |

### Return type

[**HistoryGet200Response**](HistoryGet200Response.md)

### Authorization


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

<a id="historyIngest"></a>
# **historyIngest**
> HistoryIngest200Response historyIngest(ingestRequest)

Push flattened (lossy) records into the warm index.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
val ingestRequest : IngestRequest =  // IngestRequest | 
try {
    val result : HistoryIngest200Response = apiInstance.historyIngest(ingestRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historyIngest")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historyIngest")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ingestRequest** | [**IngestRequest**](IngestRequest.md)|  | |

### Return type

[**HistoryIngest200Response**](HistoryIngest200Response.md)

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

<a id="historyList"></a>
# **historyList**
> HistoryPage historyList(limit, offset, type)

A page of the warm index — metadata only, no bodies.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
val limit : kotlin.Int = 56 // kotlin.Int | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val type : RecordType =  // RecordType | 
try {
    val result : HistoryPage = apiInstance.historyList(limit, offset, type)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historyList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historyList")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**|  | [optional] [default to 50] |
| **offset** | **kotlin.Int**|  | [optional] [default to 0] |
| **type** | [**RecordType**](.md)|  | [optional] [enum: chat, note, meeting, brief] |

### Return type

[**HistoryPage**](HistoryPage.md)

### Authorization


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

<a id="historyPutRecords"></a>
# **historyPutRecords**
> PutRecordsResponse historyPutRecords(putRecordsRequest)

Push whole records; the gateway derives the searchable text itself.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
val putRecordsRequest : PutRecordsRequest =  // PutRecordsRequest | 
try {
    val result : PutRecordsResponse = apiInstance.historyPutRecords(putRecordsRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historyPutRecords")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historyPutRecords")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **putRecordsRequest** | [**PutRecordsRequest**](PutRecordsRequest.md)|  | |

### Return type

[**PutRecordsResponse**](PutRecordsResponse.md)

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

<a id="historyRecords"></a>
# **historyRecords**
> RecordsPage historyRecords(since, cursor, limit, kind)

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
val since : kotlin.Long = 789 // kotlin.Long | A stamp (ms since epoch) from a previous page's `newest`.
val cursor : kotlin.String = cursor_example // kotlin.String | Opaque; from the previous page.
val limit : kotlin.Int = 56 // kotlin.Int | 
val kind : kotlin.String = kind_example // kotlin.String | 
try {
    val result : RecordsPage = apiInstance.historyRecords(since, cursor, limit, kind)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historyRecords")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historyRecords")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **since** | **kotlin.Long**| A stamp (ms since epoch) from a previous page&#39;s &#x60;newest&#x60;. | [optional] [default to 0L] |
| **cursor** | **kotlin.String**| Opaque; from the previous page. | [optional] |
| **limit** | **kotlin.Int**|  | [optional] [default to 200] |
| **kind** | **kotlin.String**|  | [optional] |

### Return type

[**RecordsPage**](RecordsPage.md)

### Authorization


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

<a id="historyRelated"></a>
# **historyRelated**
> HistoryRelated200Response historyRelated(id, limit)

The records most connected to one record.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
val id : kotlin.String = id_example // kotlin.String | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : HistoryRelated200Response = apiInstance.historyRelated(id, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historyRelated")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historyRelated")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | |
| **limit** | **kotlin.Int**|  | [optional] [default to 5] |

### Return type

[**HistoryRelated200Response**](HistoryRelated200Response.md)

### Authorization


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

<a id="historySearch"></a>
# **historySearch**
> SearchResponse historySearch(searchRequest)

One keyword query over the warm index.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
val searchRequest : SearchRequest =  // SearchRequest | 
try {
    val result : SearchResponse = apiInstance.historySearch(searchRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historySearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historySearch")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **searchRequest** | [**SearchRequest**](SearchRequest.md)|  | |

### Return type

[**SearchResponse**](SearchResponse.md)

### Authorization


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

<a id="historySmartSearch"></a>
# **historySmartSearch**
> SmartSearchResponse historySmartSearch(smartSearchRequest)

Several phrasings at once, rank-fused; briefs lead.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
val smartSearchRequest : SmartSearchRequest =  // SmartSearchRequest | 
try {
    val result : SmartSearchResponse = apiInstance.historySmartSearch(smartSearchRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historySmartSearch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historySmartSearch")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **smartSearchRequest** | [**SmartSearchRequest**](SmartSearchRequest.md)|  | |

### Return type

[**SmartSearchResponse**](SmartSearchResponse.md)

### Authorization


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

<a id="historyStatus"></a>
# **historyStatus**
> HistoryStatus historyStatus()

Size and freshness of the warm index (and the lossless tier from 0.10.0).

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
try {
    val result : HistoryStatus = apiInstance.historyStatus()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historyStatus")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historyStatus")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HistoryStatus**](HistoryStatus.md)

### Authorization


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

<a id="historyStream"></a>
# **historyStream**
> kotlin.String historyStream()

Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = HistoryApi()
try {
    val result : kotlin.String = apiInstance.historyStream()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling HistoryApi#historyStream")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling HistoryApi#historyStream")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**kotlin.String**

### Authorization


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

