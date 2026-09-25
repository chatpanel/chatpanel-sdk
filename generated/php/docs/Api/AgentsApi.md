# ChatPanelSdk\AgentsApi

Attested per-agent scorecards.

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**agentsExportDef()**](AgentsApi.md#agentsExportDef) | **POST** /agent-defs/export | Write an agent definition into another tool&#39;s folder. |
| [**agentsExportPlan()**](AgentsApi.md#agentsExportPlan) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it. |
| [**agentsGetDef()**](AgentsApi.md#agentsGetDef) | **GET** /agent-defs/{agentId} | One agent definition, prompt included. |
| [**agentsListDefs()**](AgentsApi.md#agentsListDefs) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one. |
| [**agentsRate()**](AgentsApi.md#agentsRate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**agentsScorecard()**](AgentsApi.md#agentsScorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**agentsScorecards()**](AgentsApi.md#agentsScorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |


## `agentsExportDef()`

```php
agentsExportDef($agent_export_request): \ChatPanelSdk\Model\AgentsExportDef200Response
```

Write an agent definition into another tool's folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with `NOT_OURS` unless `overwrite` is set. Which of those applies is what `export-plan` reports as `status`.

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


$apiInstance = new ChatPanelSdk\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$agent_export_request = new \ChatPanelSdk\Model\AgentExportRequest(); // \ChatPanelSdk\Model\AgentExportRequest

try {
    $result = $apiInstance->agentsExportDef($agent_export_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->agentsExportDef: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agent_export_request** | [**\ChatPanelSdk\Model\AgentExportRequest**](../Model/AgentExportRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\AgentsExportDef200Response**](../Model/AgentsExportDef200Response.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `agentsExportPlan()`

```php
agentsExportPlan($agent_export_request): \ChatPanelSdk\Model\AgentExportPlan
```

What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \"show me what you are about to do to my Claude Code directory\" is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.

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


$apiInstance = new ChatPanelSdk\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$agent_export_request = new \ChatPanelSdk\Model\AgentExportRequest(); // \ChatPanelSdk\Model\AgentExportRequest

try {
    $result = $apiInstance->agentsExportPlan($agent_export_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->agentsExportPlan: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agent_export_request** | [**\ChatPanelSdk\Model\AgentExportRequest**](../Model/AgentExportRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\AgentExportPlan**](../Model/AgentExportPlan.md)

### Authorization

[tokenHeader](../../README.md#tokenHeader), [gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `agentsGetDef()`

```php
agentsGetDef($agent_id, $workdir): \ChatPanelSdk\Model\AgentsGetDef200Response
```

One agent definition, prompt included.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$agent_id = 'agent_id_example'; // string | One path segment; slashes and `..` are refused.
$workdir = 'workdir_example'; // string

try {
    $result = $apiInstance->agentsGetDef($agent_id, $workdir);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->agentsGetDef: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agent_id** | **string**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **workdir** | **string**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\AgentsGetDef200Response**](../Model/AgentsGetDef200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `agentsListDefs()`

```php
agentsListDefs($workdir, $dir): \ChatPanelSdk\Model\AgentsListDefs200Response
```

The agent definitions on this machine, from every tool that writes one.

`.claude/agents/_*.md`, `.codex/agents/_*.toml`, `~/.chatpanel/agents/_*.json` and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — `promptChars` only, for the same reason `GET /skills` omits them.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$workdir = 'workdir_example'; // string | Also read this project's own agent folders, ahead of the home ones.
$dir = 'dir_example'; // string | An extra absolute folder to scan. Repeatable.

try {
    $result = $apiInstance->agentsListDefs($workdir, $dir);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->agentsListDefs: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **workdir** | **string**| Also read this project&#39;s own agent folders, ahead of the home ones. | [optional] |
| **dir** | **string**| An extra absolute folder to scan. Repeatable. | [optional] |

### Return type

[**\ChatPanelSdk\Model\AgentsListDefs200Response**](../Model/AgentsListDefs200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `agentsRate()`

```php
agentsRate($agent_id, $agents_rate_request): array<string,mixed>
```

A person rates the agent's work on a run, task or job.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$agent_id = 'agent_id_example'; // string
$agents_rate_request = new \ChatPanelSdk\Model\AgentsRateRequest(); // \ChatPanelSdk\Model\AgentsRateRequest

try {
    $result = $apiInstance->agentsRate($agent_id, $agents_rate_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->agentsRate: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agent_id** | **string**|  | |
| **agents_rate_request** | [**\ChatPanelSdk\Model\AgentsRateRequest**](../Model/AgentsRateRequest.md)|  | |

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

## `agentsScorecard()`

```php
agentsScorecard($agent_id): array<string,mixed>
```

One agent's attested scorecard.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$agent_id = 'agent_id_example'; // string

try {
    $result = $apiInstance->agentsScorecard($agent_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->agentsScorecard: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agent_id** | **string**|  | |

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

## `agentsScorecards()`

```php
agentsScorecards(): \ChatPanelSdk\Model\AgentsScorecards200Response
```

Every agent's scorecard.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\AgentsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->agentsScorecards();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AgentsApi->agentsScorecards: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\AgentsScorecards200Response**](../Model/AgentsScorecards200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
