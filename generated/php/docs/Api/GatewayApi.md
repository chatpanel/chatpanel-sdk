# ChatPanelSdk\GatewayApi

Liveness, identity and pairing.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**gatewayAudit()**](GatewayApi.md#gatewayAudit) | **GET** /audit | The egress audit — which hosts this gateway has contacted and which its config allows. |
| [**gatewayHealth()**](GatewayApi.md#gatewayHealth) | **GET** /health | Liveness, version and capabilities. |
| [**gatewayPair()**](GatewayApi.md#gatewayPair) | **POST** /pair | Exchange a pairing code for the gateway token. |
| [**gatewayPairCode()**](GatewayApi.md#gatewayPairCode) | **POST** /pair/code | Mint a one-time pairing code (5 minutes, one use, 5 attempts). |
| [**gatewayWhoami()**](GatewayApi.md#gatewayWhoami) | **POST** /whoami | What the gateway makes of this caller. |


## `gatewayAudit()`

```php
gatewayAudit(): \ChatPanelSdk\Model\Audit
```

The egress audit — which hosts this gateway has contacted and which its config allows.

The checkable claim behind \"nothing leaves the machine\". Admin-gated because it names the user's model endpoints.

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


$apiInstance = new ChatPanelSdk\Api\GatewayApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->gatewayAudit();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GatewayApi->gatewayAudit: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\Audit**](../Model/Audit.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `gatewayHealth()`

```php
gatewayHealth(): \ChatPanelSdk\Model\Health
```

Liveness, version and capabilities.

Additive fields only. `version` is what every version gate reads.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\GatewayApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->gatewayHealth();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GatewayApi->gatewayHealth: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\Health**](../Model/Health.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `gatewayPair()`

```php
gatewayPair($gateway_pair_request): \ChatPanelSdk\Model\Paired
```

Exchange a pairing code for the gateway token.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\GatewayApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$gateway_pair_request = new \ChatPanelSdk\Model\GatewayPairRequest(); // \ChatPanelSdk\Model\GatewayPairRequest

try {
    $result = $apiInstance->gatewayPair($gateway_pair_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GatewayApi->gatewayPair: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **gateway_pair_request** | [**\ChatPanelSdk\Model\GatewayPairRequest**](../Model/GatewayPairRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\Paired**](../Model/Paired.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `gatewayPairCode()`

```php
gatewayPairCode(): \ChatPanelSdk\Model\PairingCode
```

Mint a one-time pairing code (5 minutes, one use, 5 attempts).

Only a caller that already holds the token may mint one — pairing widens nothing.

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


$apiInstance = new ChatPanelSdk\Api\GatewayApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->gatewayPairCode();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GatewayApi->gatewayPairCode: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\PairingCode**](../Model/PairingCode.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `gatewayWhoami()`

```php
gatewayWhoami(): \ChatPanelSdk\Model\WhoAmI
```

What the gateway makes of this caller.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\GatewayApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->gatewayWhoami();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GatewayApi->gatewayWhoami: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\WhoAmI**](../Model/WhoAmI.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
