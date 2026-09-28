# ChatPanelSdk\ThreadsApi

The person&#39;s chats, asked by one another — any chat&#39;s own model answers in it.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**threadsSend()**](ThreadsApi.md#threadsSend) | **POST** /v1/threads/send | Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat. |


## `threadsSend()`

```php
threadsSend($threads_send_request): \ChatPanelSdk\Model\ThreadsSend200Response
```

Ask one of the person's chats and get its answer; the exchange is added to that chat.

The chat's own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; `dryRun` returns the chat's title and model for that question without running anything.

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


$apiInstance = new ChatPanelSdk\Api\ThreadsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$threads_send_request = new \ChatPanelSdk\Model\ThreadsSendRequest(); // \ChatPanelSdk\Model\ThreadsSendRequest

try {
    $result = $apiInstance->threadsSend($threads_send_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ThreadsApi->threadsSend: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **threads_send_request** | [**\ChatPanelSdk\Model\ThreadsSendRequest**](../Model/ThreadsSendRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\ThreadsSend200Response**](../Model/ThreadsSend200Response.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
