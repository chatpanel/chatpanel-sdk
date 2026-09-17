# \SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**skills_get**](SkillsApi.md#skills_get) | **GET** /skills/{skillId} | One skill, with its prompt.
[**skills_list**](SkillsApi.md#skills_list) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt.



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

