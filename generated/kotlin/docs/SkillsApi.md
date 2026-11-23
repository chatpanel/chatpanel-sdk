# SkillsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**skillsFile**](SkillsApi.md#skillsFile) | **GET** /skills/{skillId}/file/{path} | One reference file a packaged skill ships — what a model opens when the skill&#39;s prompt points at it. |
| [**skillsGet**](SkillsApi.md#skillsGet) | **GET** /skills/{skillId} | One skill, with its prompt. |
| [**skillsList**](SkillsApi.md#skillsList) | **GET** /skills | The skills on this machine — with a prompt character count, not the prompt. |
| [**skillsQuarantined**](SkillsApi.md#skillsQuarantined) | **GET** /skills-quarantined | Packages the admission scanner refused — what is on disk and deliberately not listed. |


<a id="skillsFile"></a>
# **skillsFile**
> SkillsFile200Response skillsFile(skillId, path, workdir)

One reference file a packaged skill ships — what a model opens when the skill&#39;s prompt points at it.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = SkillsApi()
val skillId : kotlin.String = skillId_example // kotlin.String | One path segment; slashes and `..` are refused.
val path : kotlin.String = path_example // kotlin.String | A file inside the skill's package, relative to it (`SKILL.md`, `reference/forms.md`). Its own slashes stay; each segment is URL-encoded. `..` is refused, and the bridge refuses anything outside the package.
val workdir : kotlin.String = workdir_example // kotlin.String | 
try {
    val result : SkillsFile200Response = apiInstance.skillsFile(skillId, path, workdir)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SkillsApi#skillsFile")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SkillsApi#skillsFile")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **skillId** | **kotlin.String**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **path** | **kotlin.String**| A file inside the skill&#39;s package, relative to it (&#x60;SKILL.md&#x60;, &#x60;reference/forms.md&#x60;). Its own slashes stay; each segment is URL-encoded. &#x60;..&#x60; is refused, and the bridge refuses anything outside the package. | |
| **workdir** | **kotlin.String**|  | [optional] |

### Return type

[**SkillsFile200Response**](SkillsFile200Response.md)

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

<a id="skillsQuarantined"></a>
# **skillsQuarantined**
> SkillsQuarantined200Response skillsQuarantined(workdir)

Packages the admission scanner refused — what is on disk and deliberately not listed.

A skill package is a prompt that will run with tools attached, so it is scanned before it is admitted. One that fails is kept out of &#x60;GET /skills&#x60; entirely; this is the only way to learn it exists, and why. The bridge has implemented it since packages could arrive; nothing could reach it until 0.48.0.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = SkillsApi()
val workdir : kotlin.String = workdir_example // kotlin.String | 
try {
    val result : SkillsQuarantined200Response = apiInstance.skillsQuarantined(workdir)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SkillsApi#skillsQuarantined")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SkillsApi#skillsQuarantined")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **workdir** | **kotlin.String**|  | [optional] |

### Return type

[**SkillsQuarantined200Response**](SkillsQuarantined200Response.md)

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

