# \SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**skills_file**](SkillsApi.md#skills_file) | **GET** /skills/{skillId}/file/{path} | One reference file a packaged skill ships — what a model opens when the skill's prompt points at it.
[**skills_get**](SkillsApi.md#skills_get) | **GET** /skills/{skillId} | One skill, with its prompt.
[**skills_list**](SkillsApi.md#skills_list) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt.
[**skills_quarantined**](SkillsApi.md#skills_quarantined) | **GET** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed.



## skills_file

> models::SkillsFile200Response skills_file(skill_id, path, workdir)
One reference file a packaged skill ships — what a model opens when the skill's prompt points at it.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**skill_id** | **String** | One path segment; slashes and `..` are refused. | [required] |
**path** | **String** | A file inside the skill's package, relative to it (`SKILL.md`, `reference/forms.md`). Its own slashes stay; each segment is URL-encoded. `..` is refused, and the bridge refuses anything outside the package. | [required] |
**workdir** | Option<**String**> |  |  |

### Return type

[**models::SkillsFile200Response**](skills_file_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## skills_get

> models::SkillsGet200Response skills_get(skill_id, workdir)
One skill, with its prompt.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**skill_id** | **String** | One path segment; slashes and `..` are refused. | [required] |
**workdir** | Option<**String**> |  |  |

### Return type

[**models::SkillsGet200Response**](skills_get_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## skills_list

> models::SkillsList200Response skills_list(workdir)
The skills on this machine — with a prompt character count, not the prompt.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**workdir** | Option<**String**> | Include the project-local skill roots of this directory (0.9.4+). |  |

### Return type

[**models::SkillsList200Response**](skills_list_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## skills_quarantined

> models::SkillsQuarantined200Response skills_quarantined(workdir)
Packages the admission scanner refused — what is on disk and deliberately not listed.

A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of `GET /skills` entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**workdir** | Option<**String**> |  |  |

### Return type

[**models::SkillsQuarantined200Response**](skills_quarantined_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

