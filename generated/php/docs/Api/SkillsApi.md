# ChatPanelSdk\SkillsApi

The skills on this machine (served through the bridge).

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**skillsFile()**](SkillsApi.md#skillsFile) | **GET** /skills/{skillId}/file/{path} | One reference file a packaged skill ships — what a model opens when the skill&#39;s prompt points at it. |
| [**skillsGet()**](SkillsApi.md#skillsGet) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**skillsList()**](SkillsApi.md#skillsList) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |
| [**skillsQuarantined()**](SkillsApi.md#skillsQuarantined) | **GET** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed. |


## `skillsFile()`

```php
skillsFile($skill_id, $path, $workdir): \ChatPanelSdk\Model\SkillsFile200Response
```

One reference file a packaged skill ships — what a model opens when the skill's prompt points at it.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$skill_id = 'skill_id_example'; // string | One path segment; slashes and `..` are refused.
$path = 'path_example'; // string | A file inside the skill's package, relative to it (`SKILL.md`, `reference/forms.md`). Its own slashes stay; each segment is URL-encoded. `..` is refused, and the bridge refuses anything outside the package.
$workdir = 'workdir_example'; // string

try {
    $result = $apiInstance->skillsFile($skill_id, $path, $workdir);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillsFile: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skill_id** | **string**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **path** | **string**| A file inside the skill&#39;s package, relative to it (&#x60;SKILL.md&#x60;, &#x60;reference/forms.md&#x60;). Its own slashes stay; each segment is URL-encoded. &#x60;..&#x60; is refused, and the bridge refuses anything outside the package. | |
| **workdir** | **string**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\SkillsFile200Response**](../Model/SkillsFile200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillsGet()`

```php
skillsGet($skill_id, $workdir): \ChatPanelSdk\Model\SkillsGet200Response
```

One skill, with its prompt.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$skill_id = 'skill_id_example'; // string | One path segment; slashes and `..` are refused.
$workdir = 'workdir_example'; // string

try {
    $result = $apiInstance->skillsGet($skill_id, $workdir);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillsGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skill_id** | **string**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **workdir** | **string**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\SkillsGet200Response**](../Model/SkillsGet200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillsList()`

```php
skillsList($workdir): \ChatPanelSdk\Model\SkillsList200Response
```

The skills on this machine — with a prompt character count, not the prompt.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$workdir = 'workdir_example'; // string | Include the project-local skill roots of this directory (0.9.4+).

try {
    $result = $apiInstance->skillsList($workdir);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillsList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **workdir** | **string**| Include the project-local skill roots of this directory (0.9.4+). | [optional] |

### Return type

[**\ChatPanelSdk\Model\SkillsList200Response**](../Model/SkillsList200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `skillsQuarantined()`

```php
skillsQuarantined($workdir): \ChatPanelSdk\Model\SkillsQuarantined200Response
```

Packages the admission scanner refused — what is on disk and deliberately not listed.

A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of `GET /skills` entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\SkillsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$workdir = 'workdir_example'; // string

try {
    $result = $apiInstance->skillsQuarantined($workdir);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SkillsApi->skillsQuarantined: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **workdir** | **string**|  | [optional] |

### Return type

[**\ChatPanelSdk\Model\SkillsQuarantined200Response**](../Model/SkillsQuarantined200Response.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
