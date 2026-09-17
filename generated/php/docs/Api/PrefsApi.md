# ChatPanelSdk\PrefsApi

The settings every client shares.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**prefsDelete()**](PrefsApi.md#prefsDelete) | **DELETE** /v1/prefs | Remove one section. |
| [**prefsEvents()**](PrefsApi.md#prefsEvents) | **GET** /v1/prefs/events | Live — which sections another client wrote. |
| [**prefsGet()**](PrefsApi.md#prefsGet) | **GET** /v1/prefs | The shared sections, or only their stamps. |
| [**prefsPut()**](PrefsApi.md#prefsPut) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp. |


## `prefsDelete()`

```php
prefsDelete($section): \ChatPanelSdk\Model\PrefsDelete200Response
```

Remove one section.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\PrefsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$section = 'section_example'; // string

try {
    $result = $apiInstance->prefsDelete($section);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PrefsApi->prefsDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **section** | **string**|  | |

### Return type

[**\ChatPanelSdk\Model\PrefsDelete200Response**](../Model/PrefsDelete200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `prefsEvents()`

```php
prefsEvents(): string
```

Live — which sections another client wrote.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\PrefsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->prefsEvents();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PrefsApi->prefsEvents: ', $e->getMessage(), PHP_EOL;
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
- **Accept**: `text/event-stream`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `prefsGet()`

```php
prefsGet($section, $stamps): \ChatPanelSdk\Model\Prefs
```

The shared sections, or only their stamps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\PrefsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$section = 'section_example'; // string
$stamps = True; // bool | Only `{ revision, stamps }`.

try {
    $result = $apiInstance->prefsGet($section, $stamps);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PrefsApi->prefsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **section** | **string**|  | [optional] |
| **stamps** | **bool**| Only &#x60;{ revision, stamps }&#x60;. | [optional] |

### Return type

[**\ChatPanelSdk\Model\Prefs**](../Model/Prefs.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `prefsPut()`

```php
prefsPut($prefs_write): \ChatPanelSdk\Model\PrefsWriteResult
```

Write sections; per-section last-writer-wins by stamp.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\PrefsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$prefs_write = new \ChatPanelSdk\Model\PrefsWrite(); // \ChatPanelSdk\Model\PrefsWrite

try {
    $result = $apiInstance->prefsPut($prefs_write);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling PrefsApi->prefsPut: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **prefs_write** | [**\ChatPanelSdk\Model\PrefsWrite**](../Model/PrefsWrite.md)|  | |

### Return type

[**\ChatPanelSdk\Model\PrefsWriteResult**](../Model/PrefsWriteResult.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
