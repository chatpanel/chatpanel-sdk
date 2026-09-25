# ChatPanel.Sdk.Api.SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**SkillsGet**](SkillsApi.md#skillsget) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**SkillsList**](SkillsApi.md#skillslist) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |
| [**SkillsQuarantined**](SkillsApi.md#skillsquarantined) | **GET** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed. |

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

