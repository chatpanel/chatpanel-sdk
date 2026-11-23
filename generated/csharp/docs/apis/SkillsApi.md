# ChatPanel.Sdk.Api.SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**SkillsFile**](SkillsApi.md#skillsfile) | **GET** /skills/{skillId}/file/{path} | One reference file a packaged skill ships — what a model opens when the skill&#39;s prompt points at it. |
| [**SkillsGet**](SkillsApi.md#skillsget) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**SkillsList**](SkillsApi.md#skillslist) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |
| [**SkillsQuarantined**](SkillsApi.md#skillsquarantined) | **GET** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed. |

<a id="skillsfile"></a>
# **SkillsFile**
> SkillsFile200Response SkillsFile (string skillId, string path, string workdir = null)

One reference file a packaged skill ships — what a model opens when the skill's prompt points at it.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **skillId** | **string** | One path segment; slashes and &#x60;..&#x60; are refused. |  |
| **path** | **string** | A file inside the skill&#39;s package, relative to it (&#x60;SKILL.md&#x60;, &#x60;reference/forms.md&#x60;). Its own slashes stay; each segment is URL-encoded. &#x60;..&#x60; is refused, and the bridge refuses anything outside the package. |  |
| **workdir** | **string** |  | [optional]  |

### Return type

[**SkillsFile200Response**](SkillsFile200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The file&#39;s text. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="skillsget"></a>
# **SkillsGet**
> SkillsGet200Response SkillsGet (string skillId, string workdir = null)

One skill, with its prompt.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **skillId** | **string** | One path segment; slashes and &#x60;..&#x60; are refused. |  |
| **workdir** | **string** |  | [optional]  |

### Return type

[**SkillsGet200Response**](SkillsGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The skill. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="skillslist"></a>
# **SkillsList**
> SkillsList200Response SkillsList (string workdir = null)

The skills on this machine — with a prompt character count, not the prompt.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **workdir** | **string** | Include the project-local skill roots of this directory (0.9.4+). | [optional]  |

### Return type

[**SkillsList200Response**](SkillsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Skills. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="skillsquarantined"></a>
# **SkillsQuarantined**
> SkillsQuarantined200Response SkillsQuarantined (string workdir = null)

Packages the admission scanner refused — what is on disk and deliberately not listed.

A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of `GET /skills` entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **workdir** | **string** |  | [optional]  |

### Return type

[**SkillsQuarantined200Response**](SkillsQuarantined200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The refused packages. |  -  |
| **502** | An error, in the gateway&#39;s words. |  -  |
| **503** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

