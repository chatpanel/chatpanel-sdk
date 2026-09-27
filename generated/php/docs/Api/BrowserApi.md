# ChatPanelSdk\BrowserApi

A local client using the person&#39;s own browser through the ChatPanel extension — the browser holds a stream, a client&#39;s page-tool call is carried to it and its result back. Every action still passes the extension&#39;s site grant, its commit confirmation and its bot-check hand-off.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**browserAnnounce()**](BrowserApi.md#browserAnnounce) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance. |
| [**browserCall()**](BrowserApi.md#browserCall) | **POST** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result. |
| [**browserResult()**](BrowserApi.md#browserResult) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it. |
| [**browserStatus()**](BrowserApi.md#browserStatus) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers. |
| [**browserStream()**](BrowserApi.md#browserStream) | **GET** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run. |


## `browserAnnounce()`

```php
browserAnnounce($browser_announce): \ChatPanelSdk\Model\BrowserAnnounce200Response
```

The browser says what it offers — its page tool spec and guidance.

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


$apiInstance = new ChatPanelSdk\Api\BrowserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$browser_announce = new \ChatPanelSdk\Model\BrowserAnnounce(); // \ChatPanelSdk\Model\BrowserAnnounce

try {
    $result = $apiInstance->browserAnnounce($browser_announce);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrowserApi->browserAnnounce: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **browser_announce** | [**\ChatPanelSdk\Model\BrowserAnnounce**](../Model/BrowserAnnounce.md)|  | |

### Return type

[**\ChatPanelSdk\Model\BrowserAnnounce200Response**](../Model/BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `browserCall()`

```php
browserCall($browser_call): \ChatPanelSdk\Model\BrowserCallResult
```

Run one page action in the person's browser and wait for its result.

Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding.

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


$apiInstance = new ChatPanelSdk\Api\BrowserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$browser_call = new \ChatPanelSdk\Model\BrowserCall(); // \ChatPanelSdk\Model\BrowserCall

try {
    $result = $apiInstance->browserCall($browser_call);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrowserApi->browserCall: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **browser_call** | [**\ChatPanelSdk\Model\BrowserCall**](../Model/BrowserCall.md)|  | |

### Return type

[**\ChatPanelSdk\Model\BrowserCallResult**](../Model/BrowserCallResult.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `browserResult()`

```php
browserResult($browser_result): \ChatPanelSdk\Model\BrowserAnnounce200Response
```

The browser answers a call it ran. Only the session the call went to may answer it.

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


$apiInstance = new ChatPanelSdk\Api\BrowserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$browser_result = new \ChatPanelSdk\Model\BrowserResult(); // \ChatPanelSdk\Model\BrowserResult

try {
    $result = $apiInstance->browserResult($browser_result);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrowserApi->browserResult: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **browser_result** | [**\ChatPanelSdk\Model\BrowserResult**](../Model/BrowserResult.md)|  | |

### Return type

[**\ChatPanelSdk\Model\BrowserAnnounce200Response**](../Model/BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `browserStatus()`

```php
browserStatus(): \ChatPanelSdk\Model\BrowserStatus
```

Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension's own — a client hands them to its model as they are.

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


$apiInstance = new ChatPanelSdk\Api\BrowserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->browserStatus();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrowserApi->browserStatus: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\BrowserStatus**](../Model/BrowserStatus.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `browserStream()`

```php
browserStream(): string
```

The browser's end — `hello` with its session, then a `call` frame per action to run.

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


$apiInstance = new ChatPanelSdk\Api\BrowserApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->browserStream();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling BrowserApi->browserStream: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

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
