# SkillsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**skillsGet**](SkillsAPI.md#skillsget) | **GET** /skills/{skillId} | One skill, with its prompt.
[**skillsList**](SkillsAPI.md#skillslist) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt.


# **skillsGet**
```swift
    open class func skillsGet(skillId: String, workdir: String? = nil, completion: @escaping (_ data: SkillsGet200Response?, _ error: Error?) -> Void)
```

One skill, with its prompt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let skillId = "skillId_example" // String | One path segment; slashes and `..` are refused.
let workdir = "workdir_example" // String |  (optional)

// One skill, with its prompt.
SkillsAPI.skillsGet(skillId: skillId, workdir: workdir) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skillId** | **String** | One path segment; slashes and &#x60;..&#x60; are refused. | 
 **workdir** | **String** |  | [optional] 

### Return type

[**SkillsGet200Response**](SkillsGet200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **skillsList**
```swift
    open class func skillsList(workdir: String? = nil, completion: @escaping (_ data: SkillsList200Response?, _ error: Error?) -> Void)
```

The skills on this machine — with a prompt character count, not the prompt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let workdir = "workdir_example" // String | Include the project-local skill roots of this directory (0.9.4+). (optional)

// The skills on this machine — with a prompt character count, not the prompt.
SkillsAPI.skillsList(workdir: workdir) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workdir** | **String** | Include the project-local skill roots of this directory (0.9.4+). | [optional] 

### Return type

[**SkillsList200Response**](SkillsList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

