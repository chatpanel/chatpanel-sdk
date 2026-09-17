# ChatPanelSdk\EnginesApi

The model ledger — every engine&#39;s card.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**enginesAppendEntry()**](EnginesApi.md#enginesAppendEntry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine. |
| [**enginesCard()**](EnginesApi.md#enginesCard) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries. |
| [**enginesList()**](EnginesApi.md#enginesList) | **GET** /v1/engines | Every engine&#39;s card. |


## `enginesAppendEntry()`

```php
enginesAppendEntry($engine_key, $request_body): array<string,mixed>
```

Append a ledger entry for an engine.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\EnginesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$engine_key = 'engine_key_example'; // string
$request_body = NULL; // array<string,mixed>

try {
    $result = $apiInstance->enginesAppendEntry($engine_key, $request_body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EnginesApi->enginesAppendEntry: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **engine_key** | **string**|  | |
| **request_body** | [**array<string,mixed>**](../Model/mixed.md)|  | |

### Return type

**array<string,mixed>**

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `enginesCard()`

```php
enginesCard($engine_key, $entries, $min_calls): array<string,mixed>
```

One engine's card, optionally with entries.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\EnginesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$engine_key = 'engine_key_example'; // string
$entries = True; // bool
$min_calls = 56; // int

try {
    $result = $apiInstance->enginesCard($engine_key, $entries, $min_calls);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EnginesApi->enginesCard: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **engine_key** | **string**|  | |
| **entries** | **bool**|  | [optional] |
| **min_calls** | **int**|  | [optional] |

### Return type

**array<string,mixed>**

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `enginesList()`

```php
enginesList($min_calls): \ChatPanelSdk\Model\EnginesList200Response
```

Every engine's card.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\EnginesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$min_calls = 56; // int

try {
    $result = $apiInstance->enginesList($min_calls);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EnginesApi->enginesList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **min_calls** | **int**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\EnginesList200Response**](../Model/EnginesList200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
