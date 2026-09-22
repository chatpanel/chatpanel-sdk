# ChatPanelSdk\FusionsApi

Several models as one — union, draft + target, fallback.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**fusionsList()**](FusionsApi.md#fusionsList) | **GET** /v1/fusions | Several models as one — the fusions this gateway has. |


## `fusionsList()`

```php
fusionsList(): \ChatPanelSdk\Model\FusionList
```

Several models as one — the fusions this gateway has.

Derived from state (the entity detector's union once a companion is ready, an engine drafting with a second model) and composed by the user (`POST /config { fusions }`, a chat fallback in order). A chat turn names a fallback as `model: \"fusion:<id>\"` and is routed to the first member that is up; `x-chatpanel-fusion` on the response says which.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\FusionsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->fusionsList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling FusionsApi->fusionsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\FusionList**](../Model/FusionList.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
