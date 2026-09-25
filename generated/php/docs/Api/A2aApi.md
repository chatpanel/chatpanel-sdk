# ChatPanelSdk\A2aApi

Remote agents reached over the Agent2Agent protocol — discovery, messages, tasks.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**a2aAgents()**](A2aApi.md#a2aAgents) | **GET** /a2a/agents | Every remote agent this gateway has spoken to. |
| [**a2aCard()**](A2aApi.md#a2aCard) | **POST** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held. |
| [**a2aMessage()**](A2aApi.md#a2aMessage) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer. |
| [**a2aStream()**](A2aApi.md#a2aStream) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced. |
| [**a2aTask()**](A2aApi.md#a2aTask) | **POST** /a2a/task | Poll or cancel a task on a remote agent. |


## `a2aAgents()`

```php
a2aAgents(): \ChatPanelSdk\Model\A2aAgents200Response
```

Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.

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


$apiInstance = new ChatPanelSdk\Api\A2aApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->a2aAgents();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling A2aApi->a2aAgents: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\A2aAgents200Response**](../Model/A2aAgents200Response.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `a2aCard()`

```php
a2aCard($a2a_card_request): \ChatPanelSdk\Model\A2aCard200Response
```

Fetch a remote agent's card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.

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


$apiInstance = new ChatPanelSdk\Api\A2aApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$a2a_card_request = new \ChatPanelSdk\Model\A2aCardRequest(); // \ChatPanelSdk\Model\A2aCardRequest

try {
    $result = $apiInstance->a2aCard($a2a_card_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling A2aApi->a2aCard: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **a2a_card_request** | [**\ChatPanelSdk\Model\A2aCardRequest**](../Model/A2aCardRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\A2aCard200Response**](../Model/A2aCard200Response.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `a2aMessage()`

```php
a2aMessage($a2_a_send_request): \ChatPanelSdk\Model\A2AResult
```

Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.

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


$apiInstance = new ChatPanelSdk\Api\A2aApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$a2_a_send_request = new \ChatPanelSdk\Model\A2ASendRequest(); // \ChatPanelSdk\Model\A2ASendRequest

try {
    $result = $apiInstance->a2aMessage($a2_a_send_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling A2aApi->a2aMessage: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **a2_a_send_request** | [**\ChatPanelSdk\Model\A2ASendRequest**](../Model/A2ASendRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\A2AResult**](../Model/A2AResult.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `a2aStream()`

```php
a2aStream($a2_a_send_request): string
```

Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`.

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


$apiInstance = new ChatPanelSdk\Api\A2aApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$a2_a_send_request = new \ChatPanelSdk\Model\A2ASendRequest(); // \ChatPanelSdk\Model\A2ASendRequest

try {
    $result = $apiInstance->a2aStream($a2_a_send_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling A2aApi->a2aStream: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **a2_a_send_request** | [**\ChatPanelSdk\Model\A2ASendRequest**](../Model/A2ASendRequest.md)|  | |

### Return type

**string**

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `text/event-stream`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `a2aTask()`

```php
a2aTask($a2a_task_request): \ChatPanelSdk\Model\A2AResult
```

Poll or cancel a task on a remote agent.

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


$apiInstance = new ChatPanelSdk\Api\A2aApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$a2a_task_request = new \ChatPanelSdk\Model\A2aTaskRequest(); // \ChatPanelSdk\Model\A2aTaskRequest

try {
    $result = $apiInstance->a2aTask($a2a_task_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling A2aApi->a2aTask: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **a2a_task_request** | [**\ChatPanelSdk\Model\A2aTaskRequest**](../Model/A2aTaskRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\A2AResult**](../Model/A2AResult.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
