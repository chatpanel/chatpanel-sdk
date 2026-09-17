# ChatPanelSdk\MemoryApi

Durable facts about the user, carried into every turn on every client.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**memoryForget()**](MemoryApi.md#memoryForget) | **POST** /v1/memory/forget | Forget memories matching an id or words. |
| [**memoryList()**](MemoryApi.md#memoryList) | **GET** /v1/memory/list | Every memory. |
| [**memoryRecall()**](MemoryApi.md#memoryRecall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them. |
| [**memoryRemember()**](MemoryApi.md#memoryRemember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded. |
| [**memorySync()**](MemoryApi.md#memorySync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set. |


## `memoryForget()`

```php
memoryForget($memory_forget_request): \ChatPanelSdk\Model\MemoryForget200Response
```

Forget memories matching an id or words.

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


$apiInstance = new ChatPanelSdk\Api\MemoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$memory_forget_request = new \ChatPanelSdk\Model\MemoryForgetRequest(); // \ChatPanelSdk\Model\MemoryForgetRequest

try {
    $result = $apiInstance->memoryForget($memory_forget_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemoryApi->memoryForget: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **memory_forget_request** | [**\ChatPanelSdk\Model\MemoryForgetRequest**](../Model/MemoryForgetRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\MemoryForget200Response**](../Model/MemoryForget200Response.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `memoryList()`

```php
memoryList(): \ChatPanelSdk\Model\MemoryList
```

Every memory.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\MemoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->memoryList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemoryApi->memoryList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\MemoryList**](../Model/MemoryList.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `memoryRecall()`

```php
memoryRecall($recall_request): \ChatPanelSdk\Model\RecallResponse
```

The memories relevant to a text, and a prompt block that carries them.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\MemoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$recall_request = new \ChatPanelSdk\Model\RecallRequest(); // \ChatPanelSdk\Model\RecallRequest

try {
    $result = $apiInstance->memoryRecall($recall_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemoryApi->memoryRecall: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **recall_request** | [**\ChatPanelSdk\Model\RecallRequest**](../Model/RecallRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\RecallResponse**](../Model/RecallResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `memoryRemember()`

```php
memoryRemember($remember_request): \ChatPanelSdk\Model\RememberResponse
```

Save a durable fact. Never anonymous — `source` is recorded.

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


$apiInstance = new ChatPanelSdk\Api\MemoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$remember_request = new \ChatPanelSdk\Model\RememberRequest(); // \ChatPanelSdk\Model\RememberRequest

try {
    $result = $apiInstance->memoryRemember($remember_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemoryApi->memoryRemember: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **remember_request** | [**\ChatPanelSdk\Model\RememberRequest**](../Model/RememberRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\RememberResponse**](../Model/RememberResponse.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `memorySync()`

```php
memorySync($memory_sync_request): \ChatPanelSdk\Model\MemorySyncResponse
```

Two-way merge in one round trip — push what you have, receive the full set.

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


$apiInstance = new ChatPanelSdk\Api\MemoryApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$memory_sync_request = new \ChatPanelSdk\Model\MemorySyncRequest(); // \ChatPanelSdk\Model\MemorySyncRequest

try {
    $result = $apiInstance->memorySync($memory_sync_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MemoryApi->memorySync: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **memory_sync_request** | [**\ChatPanelSdk\Model\MemorySyncRequest**](../Model/MemorySyncRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\MemorySyncResponse**](../Model/MemorySyncResponse.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
