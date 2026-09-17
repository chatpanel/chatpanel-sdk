# HistoryApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**historyGet**](HistoryApi.md#historyGet) | **GET** /v1/history/get | One full warm record, optionally paged by characters. |
| [**historyGetWithHttpInfo**](HistoryApi.md#historyGetWithHttpInfo) | **GET** /v1/history/get | One full warm record, optionally paged by characters. |
| [**historyIngest**](HistoryApi.md#historyIngest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index. |
| [**historyIngestWithHttpInfo**](HistoryApi.md#historyIngestWithHttpInfo) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index. |
| [**historyList**](HistoryApi.md#historyList) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies. |
| [**historyListWithHttpInfo**](HistoryApi.md#historyListWithHttpInfo) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies. |
| [**historyPutRecords**](HistoryApi.md#historyPutRecords) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself. |
| [**historyPutRecordsWithHttpInfo**](HistoryApi.md#historyPutRecordsWithHttpInfo) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself. |
| [**historyRecords**](HistoryApi.md#historyRecords) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included. |
| [**historyRecordsWithHttpInfo**](HistoryApi.md#historyRecordsWithHttpInfo) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included. |
| [**historyRelated**](HistoryApi.md#historyRelated) | **GET** /v1/history/related | The records most connected to one record. |
| [**historyRelatedWithHttpInfo**](HistoryApi.md#historyRelatedWithHttpInfo) | **GET** /v1/history/related | The records most connected to one record. |
| [**historySearch**](HistoryApi.md#historySearch) | **POST** /v1/history/search | One keyword query over the warm index. |
| [**historySearchWithHttpInfo**](HistoryApi.md#historySearchWithHttpInfo) | **POST** /v1/history/search | One keyword query over the warm index. |
| [**historySmartSearch**](HistoryApi.md#historySmartSearch) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead. |
| [**historySmartSearchWithHttpInfo**](HistoryApi.md#historySmartSearchWithHttpInfo) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead. |
| [**historyStatus**](HistoryApi.md#historyStatus) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0). |
| [**historyStatusWithHttpInfo**](HistoryApi.md#historyStatusWithHttpInfo) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0). |
| [**historyStream**](HistoryApi.md#historyStream) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change. |
| [**historyStreamWithHttpInfo**](HistoryApi.md#historyStreamWithHttpInfo) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change. |



## historyGet

> HistoryGet200Response historyGet(id, maxChars, offset)

One full warm record, optionally paged by characters.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        String id = "id_example"; // String | 
        Integer maxChars = 56; // Integer | Page a long transcript instead of pulling it all.
        Integer offset = 0; // Integer | 
        try {
            HistoryGet200Response result = apiInstance.historyGet(id, maxChars, offset);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyGet");
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
| **id** | **String**|  | |
| **maxChars** | **Integer**| Page a long transcript instead of pulling it all. | [optional] |
| **offset** | **Integer**|  | [optional] [default to 0] |

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

## historyGetWithHttpInfo

> ApiResponse<HistoryGet200Response> historyGetWithHttpInfo(id, maxChars, offset)

One full warm record, optionally paged by characters.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        String id = "id_example"; // String | 
        Integer maxChars = 56; // Integer | Page a long transcript instead of pulling it all.
        Integer offset = 0; // Integer | 
        try {
            ApiResponse<HistoryGet200Response> response = apiInstance.historyGetWithHttpInfo(id, maxChars, offset);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyGet");
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
| **id** | **String**|  | |
| **maxChars** | **Integer**| Page a long transcript instead of pulling it all. | [optional] |
| **offset** | **Integer**|  | [optional] [default to 0] |

### Return type

ApiResponse<[**HistoryGet200Response**](HistoryGet200Response.md)>


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


## historyIngest

> HistoryIngest200Response historyIngest(ingestRequest)

Push flattened (lossy) records into the warm index.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

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

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        IngestRequest ingestRequest = new IngestRequest(); // IngestRequest | 
        try {
            HistoryIngest200Response result = apiInstance.historyIngest(ingestRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyIngest");
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
| **ingestRequest** | [**IngestRequest**](IngestRequest.md)|  | |

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

## historyIngestWithHttpInfo

> ApiResponse<HistoryIngest200Response> historyIngestWithHttpInfo(ingestRequest)

Push flattened (lossy) records into the warm index.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

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

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        IngestRequest ingestRequest = new IngestRequest(); // IngestRequest | 
        try {
            ApiResponse<HistoryIngest200Response> response = apiInstance.historyIngestWithHttpInfo(ingestRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyIngest");
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
| **ingestRequest** | [**IngestRequest**](IngestRequest.md)|  | |

### Return type

ApiResponse<[**HistoryIngest200Response**](HistoryIngest200Response.md)>


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


## historyList

> HistoryPage historyList(limit, offset, type)

A page of the warm index — metadata only, no bodies.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        Integer limit = 50; // Integer | 
        Integer offset = 0; // Integer | 
        RecordType type = RecordType.fromValue("chat"); // RecordType | 
        try {
            HistoryPage result = apiInstance.historyList(limit, offset, type);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyList");
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
| **limit** | **Integer**|  | [optional] [default to 50] |
| **offset** | **Integer**|  | [optional] [default to 0] |
| **type** | [**RecordType**](.md)|  | [optional] [enum: chat, note, meeting, brief] |

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

## historyListWithHttpInfo

> ApiResponse<HistoryPage> historyListWithHttpInfo(limit, offset, type)

A page of the warm index — metadata only, no bodies.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        Integer limit = 50; // Integer | 
        Integer offset = 0; // Integer | 
        RecordType type = RecordType.fromValue("chat"); // RecordType | 
        try {
            ApiResponse<HistoryPage> response = apiInstance.historyListWithHttpInfo(limit, offset, type);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyList");
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
| **limit** | **Integer**|  | [optional] [default to 50] |
| **offset** | **Integer**|  | [optional] [default to 0] |
| **type** | [**RecordType**](.md)|  | [optional] [enum: chat, note, meeting, brief] |

### Return type

ApiResponse<[**HistoryPage**](HistoryPage.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The page. |  -  |


## historyPutRecords

> PutRecordsResponse historyPutRecords(putRecordsRequest)

Push whole records; the gateway derives the searchable text itself.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

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

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        PutRecordsRequest putRecordsRequest = new PutRecordsRequest(); // PutRecordsRequest | 
        try {
            PutRecordsResponse result = apiInstance.historyPutRecords(putRecordsRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyPutRecords");
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
| **putRecordsRequest** | [**PutRecordsRequest**](PutRecordsRequest.md)|  | |

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

## historyPutRecordsWithHttpInfo

> ApiResponse<PutRecordsResponse> historyPutRecordsWithHttpInfo(putRecordsRequest)

Push whole records; the gateway derives the searchable text itself.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

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

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        PutRecordsRequest putRecordsRequest = new PutRecordsRequest(); // PutRecordsRequest | 
        try {
            ApiResponse<PutRecordsResponse> response = apiInstance.historyPutRecordsWithHttpInfo(putRecordsRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyPutRecords");
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
| **putRecordsRequest** | [**PutRecordsRequest**](PutRecordsRequest.md)|  | |

### Return type

ApiResponse<[**PutRecordsResponse**](PutRecordsResponse.md)>


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


## historyRecords

> RecordsPage historyRecords(since, cursor, limit, kind)

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        Long since = 0L; // Long | A stamp (ms since epoch) from a previous page's `newest`.
        String cursor = "cursor_example"; // String | Opaque; from the previous page.
        Integer limit = 200; // Integer | 
        String kind = "kind_example"; // String | 
        try {
            RecordsPage result = apiInstance.historyRecords(since, cursor, limit, kind);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyRecords");
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
| **since** | **Long**| A stamp (ms since epoch) from a previous page&#39;s &#x60;newest&#x60;. | [optional] [default to 0] |
| **cursor** | **String**| Opaque; from the previous page. | [optional] |
| **limit** | **Integer**|  | [optional] [default to 200] |
| **kind** | **String**|  | [optional] |

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

## historyRecordsWithHttpInfo

> ApiResponse<RecordsPage> historyRecordsWithHttpInfo(since, cursor, limit, kind)

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        Long since = 0L; // Long | A stamp (ms since epoch) from a previous page's `newest`.
        String cursor = "cursor_example"; // String | Opaque; from the previous page.
        Integer limit = 200; // Integer | 
        String kind = "kind_example"; // String | 
        try {
            ApiResponse<RecordsPage> response = apiInstance.historyRecordsWithHttpInfo(since, cursor, limit, kind);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyRecords");
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
| **since** | **Long**| A stamp (ms since epoch) from a previous page&#39;s &#x60;newest&#x60;. | [optional] [default to 0] |
| **cursor** | **String**| Opaque; from the previous page. | [optional] |
| **limit** | **Integer**|  | [optional] [default to 200] |
| **kind** | **String**|  | [optional] |

### Return type

ApiResponse<[**RecordsPage**](RecordsPage.md)>


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


## historyRelated

> HistoryRelated200Response historyRelated(id, limit)

The records most connected to one record.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        String id = "id_example"; // String | 
        Integer limit = 5; // Integer | 
        try {
            HistoryRelated200Response result = apiInstance.historyRelated(id, limit);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyRelated");
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
| **id** | **String**|  | |
| **limit** | **Integer**|  | [optional] [default to 5] |

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

## historyRelatedWithHttpInfo

> ApiResponse<HistoryRelated200Response> historyRelatedWithHttpInfo(id, limit)

The records most connected to one record.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        String id = "id_example"; // String | 
        Integer limit = 5; // Integer | 
        try {
            ApiResponse<HistoryRelated200Response> response = apiInstance.historyRelatedWithHttpInfo(id, limit);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyRelated");
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
| **id** | **String**|  | |
| **limit** | **Integer**|  | [optional] [default to 5] |

### Return type

ApiResponse<[**HistoryRelated200Response**](HistoryRelated200Response.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Neighbours. |  -  |


## historySearch

> SearchResponse historySearch(searchRequest)

One keyword query over the warm index.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        SearchRequest searchRequest = new SearchRequest(); // SearchRequest | 
        try {
            SearchResponse result = apiInstance.historySearch(searchRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historySearch");
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
| **searchRequest** | [**SearchRequest**](SearchRequest.md)|  | |

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

## historySearchWithHttpInfo

> ApiResponse<SearchResponse> historySearchWithHttpInfo(searchRequest)

One keyword query over the warm index.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        SearchRequest searchRequest = new SearchRequest(); // SearchRequest | 
        try {
            ApiResponse<SearchResponse> response = apiInstance.historySearchWithHttpInfo(searchRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historySearch");
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
| **searchRequest** | [**SearchRequest**](SearchRequest.md)|  | |

### Return type

ApiResponse<[**SearchResponse**](SearchResponse.md)>


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


## historySmartSearch

> SmartSearchResponse historySmartSearch(smartSearchRequest)

Several phrasings at once, rank-fused; briefs lead.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        SmartSearchRequest smartSearchRequest = new SmartSearchRequest(); // SmartSearchRequest | 
        try {
            SmartSearchResponse result = apiInstance.historySmartSearch(smartSearchRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historySmartSearch");
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
| **smartSearchRequest** | [**SmartSearchRequest**](SmartSearchRequest.md)|  | |

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

## historySmartSearchWithHttpInfo

> ApiResponse<SmartSearchResponse> historySmartSearchWithHttpInfo(smartSearchRequest)

Several phrasings at once, rank-fused; briefs lead.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        SmartSearchRequest smartSearchRequest = new SmartSearchRequest(); // SmartSearchRequest | 
        try {
            ApiResponse<SmartSearchResponse> response = apiInstance.historySmartSearchWithHttpInfo(smartSearchRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historySmartSearch");
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
| **smartSearchRequest** | [**SmartSearchRequest**](SmartSearchRequest.md)|  | |

### Return type

ApiResponse<[**SmartSearchResponse**](SmartSearchResponse.md)>


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


## historyStatus

> HistoryStatus historyStatus()

Size and freshness of the warm index (and the lossless tier from 0.10.0).

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        try {
            HistoryStatus result = apiInstance.historyStatus();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyStatus");
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

## historyStatusWithHttpInfo

> ApiResponse<HistoryStatus> historyStatusWithHttpInfo()

Size and freshness of the warm index (and the lossless tier from 0.10.0).

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        try {
            ApiResponse<HistoryStatus> response = apiInstance.historyStatusWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyStatus");
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

ApiResponse<[**HistoryStatus**](HistoryStatus.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status. |  -  |


## historyStream

> String historyStream()

Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        try {
            String result = apiInstance.historyStream();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyStream");
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

**String**


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

## historyStreamWithHttpInfo

> ApiResponse<String> historyStreamWithHttpInfo()

Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change.

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.HistoryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        HistoryApi apiInstance = new HistoryApi(defaultClient);
        try {
            ApiResponse<String> response = apiInstance.historyStreamWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling HistoryApi#historyStream");
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

ApiResponse<**String**>


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

