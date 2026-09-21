# ChatPanelSdk\EventsApi

The durable event log, merged across every client and served as one CloudEvents 1.0 stream — metadata only (refs and counts, never content), ordered by &#x60;(host, seq)&#x60; and &#x60;causes&#x60;, never by clock (docs/event-stream-sync.md E1).

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**eventsCursor()**](EventsApi.md#eventsCursor) | **GET** /v1/events/cursor | The gateway&#39;s highest &#x60;seq&#x60; per host — what a client asks for before it pushes. |
| [**eventsPush()**](EventsApi.md#eventsPush) | **POST** /v1/events | Push a batch of this client&#39;s durable log as CloudEvents; each event is appended once, each refusal is named. |
| [**eventsSince()**](EventsApi.md#eventsSince) | **GET** /v1/events | The merged log above a cursor — host by host in &#x60;seq&#x60; order, as CloudEvents, paged. |
| [**eventsStream()**](EventsApi.md#eventsStream) | **GET** /v1/events/stream | Tail the merged log — &#x60;hello&#x60; once, then a &#x60;cloudevent&#x60; frame per appended event; with &#x60;cursor&#x60;, the backlog above it first. |


## `eventsCursor()`

```php
eventsCursor(): \ChatPanelSdk\Model\EventsCursor
```

The gateway's highest `seq` per host — what a client asks for before it pushes.

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


$apiInstance = new ChatPanelSdk\Api\EventsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->eventsCursor();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EventsApi->eventsCursor: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\EventsCursor**](../Model/EventsCursor.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `eventsPush()`

```php
eventsPush($push_events_request): \ChatPanelSdk\Model\PushEventsResponse
```

Push a batch of this client's durable log as CloudEvents; each event is appended once, each refusal is named.

Idempotent on event id, so a retry is free. A `seq` that moves backwards for a host under a new id is a corrupt writer and is refused by itself; the rest of the batch lands. Push what lies above your entry in `cursor` (the gateway's highest `seq` per host) and stop re-sending what `rejected` names. At most 2000 events per batch. A gateway without SQLite answers 501.

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


$apiInstance = new ChatPanelSdk\Api\EventsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$push_events_request = new \ChatPanelSdk\Model\PushEventsRequest(); // \ChatPanelSdk\Model\PushEventsRequest

try {
    $result = $apiInstance->eventsPush($push_events_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EventsApi->eventsPush: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **push_events_request** | [**\ChatPanelSdk\Model\PushEventsRequest**](../Model/PushEventsRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\PushEventsResponse**](../Model/PushEventsResponse.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `eventsSince()`

```php
eventsSince($cursor, $limit, $host): \ChatPanelSdk\Model\EventsPage
```

The merged log above a cursor — host by host in `seq` order, as CloudEvents, paged.

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


$apiInstance = new ChatPanelSdk\Api\EventsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$cursor = 'cursor_example'; // string | JSON `{ host: seq }` — the highest seq per host you already hold. Absent means everything.
$limit = 1000; // int
$host = 'host_example'; // string | One host's slice only.

try {
    $result = $apiInstance->eventsSince($cursor, $limit, $host);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EventsApi->eventsSince: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **cursor** | **string**| JSON &#x60;{ host: seq }&#x60; — the highest seq per host you already hold. Absent means everything. | [optional] |
| **limit** | **int**|  | [optional] [default to 1000] |
| **host** | **string**| One host&#39;s slice only. | [optional] |

### Return type

[**\ChatPanelSdk\Model\EventsPage**](../Model/EventsPage.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `eventsStream()`

```php
eventsStream($cursor): string
```

Tail the merged log — `hello` once, then a `cloudevent` frame per appended event; with `cursor`, the backlog above it first.

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


$apiInstance = new ChatPanelSdk\Api\EventsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$cursor = 'cursor_example'; // string | JSON `{ host: seq }`; when present the events above it are replayed before live frames.

try {
    $result = $apiInstance->eventsStream($cursor);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EventsApi->eventsStream: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **cursor** | **string**| JSON &#x60;{ host: seq }&#x60;; when present the events above it are replayed before live frames. | [optional] |

### Return type

**string**

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/event-stream`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
