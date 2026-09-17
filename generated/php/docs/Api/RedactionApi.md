# ChatPanelSdk\RedactionApi

Preview what the model would receive.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**redactionPreview()**](RedactionApi.md#redactionPreview) | **POST** /redact | What the model would receive if this text were sent now. |


## `redactionPreview()`

```php
redactionPreview($redaction_preview_request): \ChatPanelSdk\Model\RedactionPreview
```

What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\RedactionApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$redaction_preview_request = new \ChatPanelSdk\Model\RedactionPreviewRequest(); // \ChatPanelSdk\Model\RedactionPreviewRequest

try {
    $result = $apiInstance->redactionPreview($redaction_preview_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling RedactionApi->redactionPreview: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **redaction_preview_request** | [**\ChatPanelSdk\Model\RedactionPreviewRequest**](../Model/RedactionPreviewRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\RedactionPreview**](../Model/RedactionPreview.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
