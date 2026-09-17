# ChatPanelSdk\HistoryApi

The user&#39;s searchable history — chats, notes, meetings, briefs.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**historyGet()**](HistoryApi.md#historyGet) | **GET** /v1/history/get | One full warm record, optionally paged by characters. |
| [**historyIngest()**](HistoryApi.md#historyIngest) | **POST** /v1/history/ingest | Push flattened (lossy) records into the warm index. |
| [**historyList()**](HistoryApi.md#historyList) | **GET** /v1/history/list | A page of the warm index — metadata only, no bodies. |
| [**historyPutRecords()**](HistoryApi.md#historyPutRecords) | **PUT** /v1/history/records | Push whole records; the gateway derives the searchable text itself. |
| [**historyRecords()**](HistoryApi.md#historyRecords) | **GET** /v1/history/records | WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included. |
| [**historyRelated()**](HistoryApi.md#historyRelated) | **GET** /v1/history/related | The records most connected to one record. |
| [**historySearch()**](HistoryApi.md#historySearch) | **POST** /v1/history/search | One keyword query over the warm index. |
| [**historySmartSearch()**](HistoryApi.md#historySmartSearch) | **POST** /v1/history/smart-search | Several phrasings at once, rank-fused; briefs lead. |
| [**historyStatus()**](HistoryApi.md#historyStatus) | **GET** /v1/history/status | Size and freshness of the warm index (and the lossless tier from 0.10.0). |
| [**historyStream()**](HistoryApi.md#historyStream) | **GET** /v1/history/stream | Live record changes — &#x60;hello&#x60; once, then a &#x60;records&#x60; event per change. |


## `historyGet()`

```php
historyGet($id, $max_chars, $offset): \ChatPanelSdk\Model\HistoryGet200Response
```

One full warm record, optionally paged by characters.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$max_chars = 56; // int | Page a long transcript instead of pulling it all.
$offset = 0; // int

try {
    $result = $apiInstance->historyGet($id, $max_chars, $offset);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historyGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **max_chars** | **int**| Page a long transcript instead of pulling it all. | [optional] |
| **offset** | **int**|  | [optional] [default to 0] |

### Return type

[**\ChatPanelSdk\Model\HistoryGet200Response**](../Model/HistoryGet200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historyIngest()`

```php
historyIngest($ingest_request): \ChatPanelSdk\Model\HistoryIngest200Response
```

Push flattened (lossy) records into the warm index.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: tokenHeader
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKey('X-ChatPanel-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ChatPanel-Token', 'Bearer');

// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ingest_request = new \ChatPanelSdk\Model\IngestRequest(); // \ChatPanelSdk\Model\IngestRequest

try {
    $result = $apiInstance->historyIngest($ingest_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historyIngest: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **ingest_request** | [**\ChatPanelSdk\Model\IngestRequest**](../Model/IngestRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\HistoryIngest200Response**](../Model/HistoryIngest200Response.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historyList()`

```php
historyList($limit, $offset, $type): \ChatPanelSdk\Model\HistoryPage
```

A page of the warm index — metadata only, no bodies.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 50; // int
$offset = 0; // int
$type = new \ChatPanelSdk\Model\\ChatPanelSdk\Model\RecordType(); // \ChatPanelSdk\Model\RecordType

try {
    $result = $apiInstance->historyList($limit, $offset, $type);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historyList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **int**|  | [optional] [default to 50] |
| **offset** | **int**|  | [optional] [default to 0] |
| **type** | [**\ChatPanelSdk\Model\RecordType**](../Model/.md)|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\HistoryPage**](../Model/HistoryPage.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historyPutRecords()`

```php
historyPutRecords($put_records_request): \ChatPanelSdk\Model\PutRecordsResponse
```

Push whole records; the gateway derives the searchable text itself.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure API key authorization: tokenHeader
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKey('X-ChatPanel-Token', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-ChatPanel-Token', 'Bearer');

// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$put_records_request = new \ChatPanelSdk\Model\PutRecordsRequest(); // \ChatPanelSdk\Model\PutRecordsRequest

try {
    $result = $apiInstance->historyPutRecords($put_records_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historyPutRecords: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **put_records_request** | [**\ChatPanelSdk\Model\PutRecordsRequest**](../Model/PutRecordsRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\PutRecordsResponse**](../Model/PutRecordsResponse.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historyRecords()`

```php
historyRecords($since, $cursor, $limit, $kind): \ChatPanelSdk\Model\RecordsPage
```

WHOLE records changed after a stamp, oldest first, paged by cursor, tombstones included.

The lossless tier. A gateway without the SQLite store answers 501.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$since = 0; // int | A stamp (ms since epoch) from a previous page's `newest`.
$cursor = 'cursor_example'; // string | Opaque; from the previous page.
$limit = 200; // int
$kind = 'kind_example'; // string

try {
    $result = $apiInstance->historyRecords($since, $cursor, $limit, $kind);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historyRecords: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **since** | **int**| A stamp (ms since epoch) from a previous page&#39;s &#x60;newest&#x60;. | [optional] [default to 0] |
| **cursor** | **string**| Opaque; from the previous page. | [optional] |
| **limit** | **int**|  | [optional] [default to 200] |
| **kind** | **string**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\RecordsPage**](../Model/RecordsPage.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historyRelated()`

```php
historyRelated($id, $limit): \ChatPanelSdk\Model\HistoryRelated200Response
```

The records most connected to one record.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 'id_example'; // string
$limit = 5; // int

try {
    $result = $apiInstance->historyRelated($id, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historyRelated: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **string**|  | |
| **limit** | **int**|  | [optional] [default to 5] |

### Return type

[**\ChatPanelSdk\Model\HistoryRelated200Response**](../Model/HistoryRelated200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historySearch()`

```php
historySearch($search_request): \ChatPanelSdk\Model\SearchResponse
```

One keyword query over the warm index.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$search_request = new \ChatPanelSdk\Model\SearchRequest(); // \ChatPanelSdk\Model\SearchRequest

try {
    $result = $apiInstance->historySearch($search_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historySearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **search_request** | [**\ChatPanelSdk\Model\SearchRequest**](../Model/SearchRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\SearchResponse**](../Model/SearchResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historySmartSearch()`

```php
historySmartSearch($smart_search_request): \ChatPanelSdk\Model\SmartSearchResponse
```

Several phrasings at once, rank-fused; briefs lead.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$smart_search_request = new \ChatPanelSdk\Model\SmartSearchRequest(); // \ChatPanelSdk\Model\SmartSearchRequest

try {
    $result = $apiInstance->historySmartSearch($smart_search_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historySmartSearch: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **smart_search_request** | [**\ChatPanelSdk\Model\SmartSearchRequest**](../Model/SmartSearchRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\SmartSearchResponse**](../Model/SmartSearchResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historyStatus()`

```php
historyStatus(): \ChatPanelSdk\Model\HistoryStatus
```

Size and freshness of the warm index (and the lossless tier from 0.10.0).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->historyStatus();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historyStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\HistoryStatus**](../Model/HistoryStatus.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `historyStream()`

```php
historyStream(): string
```

Live record changes — `hello` once, then a `records` event per change.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\HistoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->historyStream();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling HistoryApi->historyStream: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

**string**

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/event-stream`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
