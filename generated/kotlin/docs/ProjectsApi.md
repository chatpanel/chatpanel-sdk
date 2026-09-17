# ProjectsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**projectsAppendEvents**](ProjectsApi.md#projectsAppendEvents) | **POST** /v1/projects/{projectId}/events | The executive loop appends (status, run.linked, run.spent, decision, report). |
| [**projectsApplications**](ProjectsApi.md#projectsApplications) | **GET** /v1/projects/{projectId}/jobs/{jobId}/applications | The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call. |
| [**projectsCreate**](ProjectsApi.md#projectsCreate) | **POST** /v1/projects | Open a record (idempotent) or update the page. |
| [**projectsDelete**](ProjectsApi.md#projectsDelete) | **DELETE** /v1/projects/{projectId} | Remove a project record. |
| [**projectsEvents**](ProjectsApi.md#projectsEvents) | **GET** /v1/projects/{projectId}/events | Tail a project — hello, replay, then live. |
| [**projectsGet**](ProjectsApi.md#projectsGet) | **GET** /v1/projects/{projectId} | The record — jobs, runs, spend, decisions, report. |
| [**projectsJobBoard**](ProjectsApi.md#projectsJobBoard) | **GET** /v1/projects/jobs | Every open posting across projects. |
| [**projectsList**](ProjectsApi.md#projectsList) | **GET** /v1/projects | Projects, newest activity first, jobs counted. |
| [**projectsPatchJob**](ProjectsApi.md#projectsPatchJob) | **POST** /v1/projects/{projectId}/jobs/{jobId} | Move a job along its state machine. |
| [**projectsPostJob**](ProjectsApi.md#projectsPostJob) | **POST** /v1/projects/{projectId}/jobs | Post a job. |
| [**projectsRecruit**](ProjectsApi.md#projectsRecruit) | **POST** /v1/projects/{projectId}/jobs/{jobId}/recruit | One pass — fit recomputed, the evaluation read through the schema, the pick landed as events. |


<a id="projectsAppendEvents"></a>
# **projectsAppendEvents**
> InlineObject1 projectsAppendEvents(projectId, teamsAppendRunEventsRequest)

The executive loop appends (status, run.linked, run.spent, decision, report).

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectId : kotlin.String = projectId_example // kotlin.String | 
val teamsAppendRunEventsRequest : TeamsAppendRunEventsRequest =  // TeamsAppendRunEventsRequest | 
try {
    val result : InlineObject1 = apiInstance.projectsAppendEvents(projectId, teamsAppendRunEventsRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsAppendEvents")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsAppendEvents")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectId** | **kotlin.String**|  | |
| **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="projectsApplications"></a>
# **projectsApplications**
> kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt; projectsApplications(projectId, jobId, reach, chatModel)

The pool applies at once; &#x60;prompt&#x60; is the evaluator&#39;s, for a structured call.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectId : kotlin.String = projectId_example // kotlin.String | 
val jobId : kotlin.String = jobId_example // kotlin.String | 
val reach : kotlin.String = reach_example // kotlin.String | 
val chatModel : kotlin.String = chatModel_example // kotlin.String | 
try {
    val result : kotlin.collections.Map<kotlin.String, kotlin.Any> = apiInstance.projectsApplications(projectId, jobId, reach, chatModel)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsApplications")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsApplications")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectId** | **kotlin.String**|  | |
| **jobId** | **kotlin.String**|  | |
| **reach** | **kotlin.String**|  | [optional] [default to &quot;any&quot;] |
| **chatModel** | **kotlin.String**|  | [optional] |

### Return type

[**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md)

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

<a id="projectsCreate"></a>
# **projectsCreate**
> InlineObject1 projectsCreate(projectsCreateRequest)

Open a record (idempotent) or update the page.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectsCreateRequest : ProjectsCreateRequest =  // ProjectsCreateRequest | 
try {
    val result : InlineObject1 = apiInstance.projectsCreate(projectsCreateRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsCreate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsCreate")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectsCreateRequest** | [**ProjectsCreateRequest**](ProjectsCreateRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="projectsDelete"></a>
# **projectsDelete**
> PrefsDelete200Response projectsDelete(projectId)

Remove a project record.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectId : kotlin.String = projectId_example // kotlin.String | 
try {
    val result : PrefsDelete200Response = apiInstance.projectsDelete(projectId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsDelete")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectId** | **kotlin.String**|  | |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

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

<a id="projectsEvents"></a>
# **projectsEvents**
> kotlin.String projectsEvents(projectId, after)

Tail a project — hello, replay, then live.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectId : kotlin.String = projectId_example // kotlin.String | 
val after : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.String = apiInstance.projectsEvents(projectId, after)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsEvents")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsEvents")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectId** | **kotlin.String**|  | |
| **after** | **kotlin.Int**|  | [optional] |

### Return type

**kotlin.String**

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

<a id="projectsGet"></a>
# **projectsGet**
> InlineObject1 projectsGet(projectId, events)

The record — jobs, runs, spend, decisions, report.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectId : kotlin.String = projectId_example // kotlin.String | 
val events : kotlin.Boolean = true // kotlin.Boolean | 
try {
    val result : InlineObject1 = apiInstance.projectsGet(projectId, events)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectId** | **kotlin.String**|  | |
| **events** | **kotlin.Boolean**|  | [optional] |

### Return type

[**InlineObject1**](InlineObject1.md)

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

<a id="projectsJobBoard"></a>
# **projectsJobBoard**
> ProjectsJobBoard200Response projectsJobBoard()

Every open posting across projects.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
try {
    val result : ProjectsJobBoard200Response = apiInstance.projectsJobBoard()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsJobBoard")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsJobBoard")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProjectsJobBoard200Response**](ProjectsJobBoard200Response.md)

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

<a id="projectsList"></a>
# **projectsList**
> ProjectsList200Response projectsList(limit, status)

Projects, newest activity first, jobs counted.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val limit : kotlin.Int = 56 // kotlin.Int | 
val status : kotlin.String = status_example // kotlin.String | 
try {
    val result : ProjectsList200Response = apiInstance.projectsList(limit, status)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsList")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**|  | [optional] [default to 50] |
| **status** | **kotlin.String**|  | [optional] |

### Return type

[**ProjectsList200Response**](ProjectsList200Response.md)

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

<a id="projectsPatchJob"></a>
# **projectsPatchJob**
> InlineObject1 projectsPatchJob(projectId, jobId, projectsPatchJobRequest)

Move a job along its state machine.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectId : kotlin.String = projectId_example // kotlin.String | 
val jobId : kotlin.String = jobId_example // kotlin.String | 
val projectsPatchJobRequest : ProjectsPatchJobRequest =  // ProjectsPatchJobRequest | 
try {
    val result : InlineObject1 = apiInstance.projectsPatchJob(projectId, jobId, projectsPatchJobRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsPatchJob")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsPatchJob")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectId** | **kotlin.String**|  | |
| **jobId** | **kotlin.String**|  | |
| **projectsPatchJobRequest** | [**ProjectsPatchJobRequest**](ProjectsPatchJobRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="projectsPostJob"></a>
# **projectsPostJob**
> InlineObject1 projectsPostJob(projectId, projectsPostJobRequest)

Post a job.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectId : kotlin.String = projectId_example // kotlin.String | 
val projectsPostJobRequest : ProjectsPostJobRequest =  // ProjectsPostJobRequest | 
try {
    val result : InlineObject1 = apiInstance.projectsPostJob(projectId, projectsPostJobRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsPostJob")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsPostJob")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectId** | **kotlin.String**|  | |
| **projectsPostJobRequest** | [**ProjectsPostJobRequest**](ProjectsPostJobRequest.md)|  | |

### Return type

[**InlineObject1**](InlineObject1.md)

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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a id="projectsRecruit"></a>
# **projectsRecruit**
> kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt; projectsRecruit(projectId, jobId, projectsRecruitRequest)

One pass — fit recomputed, the evaluation read through the schema, the pick landed as events.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ProjectsApi()
val projectId : kotlin.String = projectId_example // kotlin.String | 
val jobId : kotlin.String = jobId_example // kotlin.String | 
val projectsRecruitRequest : ProjectsRecruitRequest =  // ProjectsRecruitRequest | 
try {
    val result : kotlin.collections.Map<kotlin.String, kotlin.Any> = apiInstance.projectsRecruit(projectId, jobId, projectsRecruitRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ProjectsApi#projectsRecruit")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ProjectsApi#projectsRecruit")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **projectId** | **kotlin.String**|  | |
| **jobId** | **kotlin.String**|  | |
| **projectsRecruitRequest** | [**ProjectsRecruitRequest**](ProjectsRecruitRequest.md)|  | |

### Return type

[**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md)

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

 - **Content-Type**: application/json
 - **Accept**: application/json

