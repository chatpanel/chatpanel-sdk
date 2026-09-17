# ChatPanelSdk\ProjectsApi

The project record — the page a goal starts on and everything done for it.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**projectsAppendEvents()**](ProjectsApi.md#projectsAppendEvents) | **POST** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report). |
| [**projectsApplications()**](ProjectsApi.md#projectsApplications) | **GET** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call. |
| [**projectsCreate()**](ProjectsApi.md#projectsCreate) | **POST** /v1/projects | Open a record (idempotent) or update the page. |
| [**projectsDelete()**](ProjectsApi.md#projectsDelete) | **DELETE** /v1/projects/{projectId} | Remove a project record. |
| [**projectsEvents()**](ProjectsApi.md#projectsEvents) | **GET** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live. |
| [**projectsGet()**](ProjectsApi.md#projectsGet) | **GET** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report. |
| [**projectsJobBoard()**](ProjectsApi.md#projectsJobBoard) | **GET** /v1/projects/jobs | Every open posting across projects. |
| [**projectsList()**](ProjectsApi.md#projectsList) | **GET** /v1/projects | Projects, newest activity first, jobs counted. |
| [**projectsPatchJob()**](ProjectsApi.md#projectsPatchJob) | **POST** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine. |
| [**projectsPostJob()**](ProjectsApi.md#projectsPostJob) | **POST** /v1/projects/{projectId}/jobs | Post a job. |
| [**projectsRecruit()**](ProjectsApi.md#projectsRecruit) | **POST** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events. |


## `projectsAppendEvents()`

```php
projectsAppendEvents($project_id, $teams_append_run_events_request): \ChatPanelSdk\Model\InlineObject1
```

The executive loop appends (status, run.linked, run.spent, decision, report).

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string
$teams_append_run_events_request = new \ChatPanelSdk\Model\TeamsAppendRunEventsRequest(); // \ChatPanelSdk\Model\TeamsAppendRunEventsRequest

try {
    $result = $apiInstance->projectsAppendEvents($project_id, $teams_append_run_events_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsAppendEvents: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **string**|  | |
| **teams_append_run_events_request** | [**\ChatPanelSdk\Model\TeamsAppendRunEventsRequest**](../Model/TeamsAppendRunEventsRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectsApplications()`

```php
projectsApplications($project_id, $job_id, $reach, $chat_model): array<string,mixed>
```

The pool applies at once; `prompt` is the evaluator's, for a structured call.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string
$job_id = 'job_id_example'; // string
$reach = 'any'; // string
$chat_model = 'chat_model_example'; // string

try {
    $result = $apiInstance->projectsApplications($project_id, $job_id, $reach, $chat_model);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsApplications: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **string**|  | |
| **job_id** | **string**|  | |
| **reach** | **string**|  | [optional] [default to &#39;any&#39;] |
| **chat_model** | **string**|  | [optional] |

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

## `projectsCreate()`

```php
projectsCreate($projects_create_request): \ChatPanelSdk\Model\InlineObject1
```

Open a record (idempotent) or update the page.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$projects_create_request = new \ChatPanelSdk\Model\ProjectsCreateRequest(); // \ChatPanelSdk\Model\ProjectsCreateRequest

try {
    $result = $apiInstance->projectsCreate($projects_create_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsCreate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projects_create_request** | [**\ChatPanelSdk\Model\ProjectsCreateRequest**](../Model/ProjectsCreateRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectsDelete()`

```php
projectsDelete($project_id): \ChatPanelSdk\Model\PrefsDelete200Response
```

Remove a project record.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string

try {
    $result = $apiInstance->projectsDelete($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsDelete: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **string**|  | |

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

## `projectsEvents()`

```php
projectsEvents($project_id, $after): string
```

Tail a project — hello, replay, then live.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string
$after = 56; // int

try {
    $result = $apiInstance->projectsEvents($project_id, $after);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsEvents: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **string**|  | |
| **after** | **int**|  | [optional] |

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

## `projectsGet()`

```php
projectsGet($project_id, $events): \ChatPanelSdk\Model\InlineObject1
```

The record — jobs, runs, spend, decisions, report.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string
$events = True; // bool

try {
    $result = $apiInstance->projectsGet($project_id, $events);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **string**|  | |
| **events** | **bool**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectsJobBoard()`

```php
projectsJobBoard(): \ChatPanelSdk\Model\ProjectsJobBoard200Response
```

Every open posting across projects.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->projectsJobBoard();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsJobBoard: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\ProjectsJobBoard200Response**](../Model/ProjectsJobBoard200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectsList()`

```php
projectsList($limit, $status): \ChatPanelSdk\Model\ProjectsList200Response
```

Projects, newest activity first, jobs counted.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$limit = 50; // int
$status = 'status_example'; // string

try {
    $result = $apiInstance->projectsList($limit, $status);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **int**|  | [optional] [default to 50] |
| **status** | **string**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\ProjectsList200Response**](../Model/ProjectsList200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectsPatchJob()`

```php
projectsPatchJob($project_id, $job_id, $projects_patch_job_request): \ChatPanelSdk\Model\InlineObject1
```

Move a job along its state machine.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string
$job_id = 'job_id_example'; // string
$projects_patch_job_request = new \ChatPanelSdk\Model\ProjectsPatchJobRequest(); // \ChatPanelSdk\Model\ProjectsPatchJobRequest

try {
    $result = $apiInstance->projectsPatchJob($project_id, $job_id, $projects_patch_job_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsPatchJob: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **string**|  | |
| **job_id** | **string**|  | |
| **projects_patch_job_request** | [**\ChatPanelSdk\Model\ProjectsPatchJobRequest**](../Model/ProjectsPatchJobRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectsPostJob()`

```php
projectsPostJob($project_id, $projects_post_job_request): \ChatPanelSdk\Model\InlineObject1
```

Post a job.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string
$projects_post_job_request = new \ChatPanelSdk\Model\ProjectsPostJobRequest(); // \ChatPanelSdk\Model\ProjectsPostJobRequest

try {
    $result = $apiInstance->projectsPostJob($project_id, $projects_post_job_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsPostJob: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **string**|  | |
| **projects_post_job_request** | [**\ChatPanelSdk\Model\ProjectsPostJobRequest**](../Model/ProjectsPostJobRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\InlineObject1**](../Model/InlineObject1.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `projectsRecruit()`

```php
projectsRecruit($project_id, $job_id, $projects_recruit_request): array<string,mixed>
```

One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\ProjectsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$project_id = 'project_id_example'; // string
$job_id = 'job_id_example'; // string
$projects_recruit_request = new \ChatPanelSdk\Model\ProjectsRecruitRequest(); // \ChatPanelSdk\Model\ProjectsRecruitRequest

try {
    $result = $apiInstance->projectsRecruit($project_id, $job_id, $projects_recruit_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ProjectsApi->projectsRecruit: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **project_id** | **string**|  | |
| **job_id** | **string**|  | |
| **projects_recruit_request** | [**\ChatPanelSdk\Model\ProjectsRecruitRequest**](../Model/ProjectsRecruitRequest.md)|  | |

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
