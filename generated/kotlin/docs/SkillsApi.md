# SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**skillsGet**](SkillsApi.md#skillsGet) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**skillsList**](SkillsApi.md#skillsList) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |


<a id="skillsGet"></a>
# **skillsGet**
> SkillsGet200Response skillsGet(skillId, workdir)

One skill, with its prompt.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = SkillsApi()
val skillId : kotlin.String = skillId_example // kotlin.String | One path segment; slashes and `..` are refused.
val workdir : kotlin.String = workdir_example // kotlin.String | 
try {
    val result : SkillsGet200Response = apiInstance.skillsGet(skillId, workdir)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SkillsApi#skillsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SkillsApi#skillsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skillId** | **kotlin.String**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **workdir** | **kotlin.String**|  | [optional] |

### Return type

[**SkillsGet200Response**](SkillsGet200Response.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="skillsList"></a>
# **skillsList**
> SkillsList200Response skillsList(workdir)

The skills on this machine — with a prompt character count, not the prompt.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = SkillsApi()
val workdir : kotlin.String = workdir_example // kotlin.String | Include the project-local skill roots of this directory (0.9.4+).
try {
    val result : SkillsList200Response = apiInstance.skillsList(workdir)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SkillsApi#skillsList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SkillsApi#skillsList")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **workdir** | **kotlin.String**| Include the project-local skill roots of this directory (0.9.4+). | [optional] |

### Return type

[**SkillsList200Response**](SkillsList200Response.md)

### Authorization


Configure gatewayToken statically:
```kotlin
ApiClient.accessToken = ""
```
Configure gatewayToken dynamically:
```kotlin
apiInstance.accessTokenProvider = { "" }
```

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

