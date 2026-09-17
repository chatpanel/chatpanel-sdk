# ChatPanelSdk\TeamsApi

Team runs — the board every client can read.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**teamsAnswer()**](TeamsApi.md#teamsAnswer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board. |
| [**teamsAppendRunEvents()**](TeamsApi.md#teamsAppendRunEvents) | **POST** /v1/teams/runs/{runId}/events | The running client appends events. |
| [**teamsCheckpoint()**](TeamsApi.md#teamsCheckpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away. |
| [**teamsClaim()**](TeamsApi.md#teamsClaim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over. |
| [**teamsCreateRun()**](TeamsApi.md#teamsCreateRun) | **POST** /v1/teams/runs | Open a run record. |
| [**teamsDecide()**](TeamsApi.md#teamsDecide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post. |
| [**teamsDeleteRun()**](TeamsApi.md#teamsDeleteRun) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first. |
| [**teamsGetRun()**](TeamsApi.md#teamsGetRun) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events. |
| [**teamsHandoff()**](TeamsApi.md#teamsHandoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model. |
| [**teamsListRuns()**](TeamsApi.md#teamsListRuns) | **GET** /v1/teams/runs | The board — recent runs, newest first. |
| [**teamsPost()**](TeamsApi.md#teamsPost) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread. |
| [**teamsRemoveThread()**](TeamsApi.md#teamsRemoveThread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board. |
| [**teamsRunEvents()**](TeamsApi.md#teamsRunEvents) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live. |
| [**teamsStopRun()**](TeamsApi.md#teamsStopRun) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop. |


## `teamsAnswer()`

```php
teamsAnswer($run_id, $teams_answer_request): \ChatPanelSdk\Model\InlineObject
```

A person answers an ask on the board.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$teams_answer_request = new \ChatPanelSdk\Model\TeamsAnswerRequest(); // \ChatPanelSdk\Model\TeamsAnswerRequest

try {
    $result = $apiInstance->teamsAnswer($run_id, $teams_answer_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsAnswer: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **teams_answer_request** | [**\ChatPanelSdk\Model\TeamsAnswerRequest**](../Model/TeamsAnswerRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsAppendRunEvents()`

```php
teamsAppendRunEvents($run_id, $teams_append_run_events_request): \ChatPanelSdk\Model\InlineObject
```

The running client appends events.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$teams_append_run_events_request = new \ChatPanelSdk\Model\TeamsAppendRunEventsRequest(); // \ChatPanelSdk\Model\TeamsAppendRunEventsRequest

try {
    $result = $apiInstance->teamsAppendRunEvents($run_id, $teams_append_run_events_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsAppendRunEvents: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **teams_append_run_events_request** | [**\ChatPanelSdk\Model\TeamsAppendRunEventsRequest**](../Model/TeamsAppendRunEventsRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsCheckpoint()`

```php
teamsCheckpoint($run_id): \ChatPanelSdk\Model\TeamsCheckpoint200Response
```

What a client needs to resume a run whose client went away.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string

try {
    $result = $apiInstance->teamsCheckpoint($run_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsCheckpoint: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |

### Return type

[**\ChatPanelSdk\Model\TeamsCheckpoint200Response**](../Model/TeamsCheckpoint200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsClaim()`

```php
teamsClaim($run_id, $teams_claim_request): \ChatPanelSdk\Model\InlineObject
```

A client takes a stopped or stale run over.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$teams_claim_request = new \ChatPanelSdk\Model\TeamsClaimRequest(); // \ChatPanelSdk\Model\TeamsClaimRequest

try {
    $result = $apiInstance->teamsClaim($run_id, $teams_claim_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsClaim: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **teams_claim_request** | [**\ChatPanelSdk\Model\TeamsClaimRequest**](../Model/TeamsClaimRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsCreateRun()`

```php
teamsCreateRun($team_run_create): \ChatPanelSdk\Model\InlineObject
```

Open a run record.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$team_run_create = new \ChatPanelSdk\Model\TeamRunCreate(); // \ChatPanelSdk\Model\TeamRunCreate

try {
    $result = $apiInstance->teamsCreateRun($team_run_create);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsCreateRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **team_run_create** | [**\ChatPanelSdk\Model\TeamRunCreate**](../Model/TeamRunCreate.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsDecide()`

```php
teamsDecide($run_id, $teams_decide_request): \ChatPanelSdk\Model\InlineObject
```

Approve or reject a post.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$teams_decide_request = new \ChatPanelSdk\Model\TeamsDecideRequest(); // \ChatPanelSdk\Model\TeamsDecideRequest

try {
    $result = $apiInstance->teamsDecide($run_id, $teams_decide_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsDecide: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **teams_decide_request** | [**\ChatPanelSdk\Model\TeamsDecideRequest**](../Model/TeamsDecideRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsDeleteRun()`

```php
teamsDeleteRun($run_id): \ChatPanelSdk\Model\PrefsDelete200Response
```

Remove a run; a live one is stopped first.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string

try {
    $result = $apiInstance->teamsDeleteRun($run_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsDeleteRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |

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

## `teamsGetRun()`

```php
teamsGetRun($run_id, $events): \ChatPanelSdk\Model\InlineObject
```

One run, optionally with its events.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$events = True; // bool

try {
    $result = $apiInstance->teamsGetRun($run_id, $events);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsGetRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **events** | **bool**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsHandoff()`

```php
teamsHandoff($run_id, $teams_handoff_request): \ChatPanelSdk\Model\InlineObject
```

Continue a task on another model.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$teams_handoff_request = new \ChatPanelSdk\Model\TeamsHandoffRequest(); // \ChatPanelSdk\Model\TeamsHandoffRequest

try {
    $result = $apiInstance->teamsHandoff($run_id, $teams_handoff_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsHandoff: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **teams_handoff_request** | [**\ChatPanelSdk\Model\TeamsHandoffRequest**](../Model/TeamsHandoffRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsListRuns()`

```php
teamsListRuns($limit, $team): \ChatPanelSdk\Model\TeamsListRuns200Response
```

The board — recent runs, newest first.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 50; // int
$team = 'team_example'; // string

try {
    $result = $apiInstance->teamsListRuns($limit, $team);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsListRuns: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **int**|  | [optional] [default to 50] |
| **team** | **string**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\TeamsListRuns200Response**](../Model/TeamsListRuns200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsPost()`

```php
teamsPost($run_id, $teams_post_request): \ChatPanelSdk\Model\InlineObject
```

Post a note to a thread.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$teams_post_request = new \ChatPanelSdk\Model\TeamsPostRequest(); // \ChatPanelSdk\Model\TeamsPostRequest

try {
    $result = $apiInstance->teamsPost($run_id, $teams_post_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **teams_post_request** | [**\ChatPanelSdk\Model\TeamsPostRequest**](../Model/TeamsPostRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsRemoveThread()`

```php
teamsRemoveThread($run_id, $thread_id): \ChatPanelSdk\Model\InlineObject
```

A person removes a thread from the board.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$thread_id = 'thread_id_example'; // string

try {
    $result = $apiInstance->teamsRemoveThread($run_id, $thread_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsRemoveThread: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **thread_id** | **string**|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsRunEvents()`

```php
teamsRunEvents($run_id, $after): string
```

Tail a run — the record first, replay from `after`, then live.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string
$after = 56; // int | Replay events with seq greater than this; absent means from the start.

try {
    $result = $apiInstance->teamsRunEvents($run_id, $after);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsRunEvents: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |
| **after** | **int**| Replay events with seq greater than this; absent means from the start. | [optional] |

### Return type

**string**

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/event-stream`, `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `teamsStopRun()`

```php
teamsStopRun($run_id): \ChatPanelSdk\Model\InlineObject
```

Ask the running client to stop.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\TeamsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$run_id = 'run_id_example'; // string

try {
    $result = $apiInstance->teamsStopRun($run_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TeamsApi->teamsStopRun: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **run_id** | **string**|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject**](../Model/InlineObject.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
