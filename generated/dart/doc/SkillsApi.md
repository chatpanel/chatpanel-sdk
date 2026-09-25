# chatpanel.api.SkillsApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**skillsGet**](SkillsApi.md#skillsget) | **GET** /skills/{skillId} | One skill, with its prompt.
[**skillsList**](SkillsApi.md#skillslist) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt.
[**skillsQuarantined**](SkillsApi.md#skillsquarantined) | **GET** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed.


# **skillsGet**
> SkillsGet200Response skillsGet(skillId, workdir)

One skill, with its prompt.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getSkillsApi();
final String skillId = skillId_example; // String | One path segment; slashes and `..` are refused.
final String workdir = workdir_example; // String | 

try {
    final response = api.skillsGet(skillId, workdir);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SkillsApi->skillsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skillId** | **String**| One path segment; slashes and `..` are refused. | 
 **workdir** | **String**|  | [optional] 

### Return type

[**SkillsGet200Response**](SkillsGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **skillsList**
> SkillsList200Response skillsList(workdir)

The skills on this machine — with a prompt character count, not the prompt.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getSkillsApi();
final String workdir = workdir_example; // String | Include the project-local skill roots of this directory (0.9.4+).

try {
    final response = api.skillsList(workdir);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SkillsApi->skillsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workdir** | **String**| Include the project-local skill roots of this directory (0.9.4+). | [optional] 

### Return type

[**SkillsList200Response**](SkillsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **skillsQuarantined**
> SkillsQuarantined200Response skillsQuarantined(workdir)

Packages the admission scanner refused — what is on disk and deliberately not listed.

A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of `GET /skills` entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getSkillsApi();
final String workdir = workdir_example; // String | 

try {
    final response = api.skillsQuarantined(workdir);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SkillsApi->skillsQuarantined: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workdir** | **String**|  | [optional] 

### Return type

[**SkillsQuarantined200Response**](SkillsQuarantined200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

