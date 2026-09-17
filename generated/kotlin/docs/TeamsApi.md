# TeamsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**teamsAnswer**](TeamsApi.md#teamsAnswer) | **POST** /v1/teams/runs/{runId}/answer | A person answers an ask on the board. |
| [**teamsAppendRunEvents**](TeamsApi.md#teamsAppendRunEvents) | **POST** /v1/teams/runs/{runId}/events | The running client appends events. |
| [**teamsCheckpoint**](TeamsApi.md#teamsCheckpoint) | **GET** /v1/teams/runs/{runId}/checkpoint | What a client needs to resume a run whose client went away. |
| [**teamsClaim**](TeamsApi.md#teamsClaim) | **POST** /v1/teams/runs/{runId}/claim | A client takes a stopped or stale run over. |
| [**teamsCreateRun**](TeamsApi.md#teamsCreateRun) | **POST** /v1/teams/runs | Open a run record. |
| [**teamsDecide**](TeamsApi.md#teamsDecide) | **POST** /v1/teams/runs/{runId}/decide | Approve or reject a post. |
| [**teamsDeleteRun**](TeamsApi.md#teamsDeleteRun) | **DELETE** /v1/teams/runs/{runId} | Remove a run; a live one is stopped first. |
| [**teamsGetRun**](TeamsApi.md#teamsGetRun) | **GET** /v1/teams/runs/{runId} | One run, optionally with its events. |
| [**teamsHandoff**](TeamsApi.md#teamsHandoff) | **POST** /v1/teams/runs/{runId}/handoff | Continue a task on another model. |
| [**teamsListRuns**](TeamsApi.md#teamsListRuns) | **GET** /v1/teams/runs | The board — recent runs, newest first. |
| [**teamsPost**](TeamsApi.md#teamsPost) | **POST** /v1/teams/runs/{runId}/post | Post a note to a thread. |
| [**teamsRemoveThread**](TeamsApi.md#teamsRemoveThread) | **DELETE** /v1/teams/runs/{runId}/threads/{threadId} | A person removes a thread from the board. |
| [**teamsRunEvents**](TeamsApi.md#teamsRunEvents) | **GET** /v1/teams/runs/{runId}/events | Tail a run — the record first, replay from &#x60;after&#x60;, then live. |
| [**teamsStopRun**](TeamsApi.md#teamsStopRun) | **POST** /v1/teams/runs/{runId}/stop | Ask the running client to stop. |


<a id="teamsAnswer"></a>
# **teamsAnswer**
> InlineObject teamsAnswer(runId, teamsAnswerRequest)

A person answers an ask on the board.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val teamsAnswerRequest : TeamsAnswerRequest =  // TeamsAnswerRequest | 
try {
    val result : InlineObject = apiInstance.teamsAnswer(runId, teamsAnswerRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsAnswer")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsAnswer")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **teamsAnswerRequest** | [**TeamsAnswerRequest**](TeamsAnswerRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsAppendRunEvents"></a>
# **teamsAppendRunEvents**
> InlineObject teamsAppendRunEvents(runId, teamsAppendRunEventsRequest)

The running client appends events.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val teamsAppendRunEventsRequest : TeamsAppendRunEventsRequest =  // TeamsAppendRunEventsRequest | 
try {
    val result : InlineObject = apiInstance.teamsAppendRunEvents(runId, teamsAppendRunEventsRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsAppendRunEvents")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsAppendRunEvents")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **teamsAppendRunEventsRequest** | [**TeamsAppendRunEventsRequest**](TeamsAppendRunEventsRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsCheckpoint"></a>
# **teamsCheckpoint**
> TeamsCheckpoint200Response teamsCheckpoint(runId)

What a client needs to resume a run whose client went away.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
try {
    val result : TeamsCheckpoint200Response = apiInstance.teamsCheckpoint(runId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsCheckpoint")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsCheckpoint")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |

### Return type

[**TeamsCheckpoint200Response**](TeamsCheckpoint200Response.md)

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

<a id="teamsClaim"></a>
# **teamsClaim**
> InlineObject teamsClaim(runId, teamsClaimRequest)

A client takes a stopped or stale run over.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val teamsClaimRequest : TeamsClaimRequest =  // TeamsClaimRequest | 
try {
    val result : InlineObject = apiInstance.teamsClaim(runId, teamsClaimRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsClaim")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsClaim")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **teamsClaimRequest** | [**TeamsClaimRequest**](TeamsClaimRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsCreateRun"></a>
# **teamsCreateRun**
> InlineObject teamsCreateRun(teamRunCreate)

Open a run record.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val teamRunCreate : TeamRunCreate =  // TeamRunCreate | 
try {
    val result : InlineObject = apiInstance.teamsCreateRun(teamRunCreate)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsCreateRun")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsCreateRun")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **teamRunCreate** | [**TeamRunCreate**](TeamRunCreate.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsDecide"></a>
# **teamsDecide**
> InlineObject teamsDecide(runId, teamsDecideRequest)

Approve or reject a post.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val teamsDecideRequest : TeamsDecideRequest =  // TeamsDecideRequest | 
try {
    val result : InlineObject = apiInstance.teamsDecide(runId, teamsDecideRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsDecide")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsDecide")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **teamsDecideRequest** | [**TeamsDecideRequest**](TeamsDecideRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsDeleteRun"></a>
# **teamsDeleteRun**
> PrefsDelete200Response teamsDeleteRun(runId)

Remove a run; a live one is stopped first.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
try {
    val result : PrefsDelete200Response = apiInstance.teamsDeleteRun(runId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsDeleteRun")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsDeleteRun")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |

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

<a id="teamsGetRun"></a>
# **teamsGetRun**
> InlineObject teamsGetRun(runId, events)

One run, optionally with its events.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val events : kotlin.Boolean = true // kotlin.Boolean | 
try {
    val result : InlineObject = apiInstance.teamsGetRun(runId, events)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsGetRun")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsGetRun")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **events** | **kotlin.Boolean**|  | [optional] |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsHandoff"></a>
# **teamsHandoff**
> InlineObject teamsHandoff(runId, teamsHandoffRequest)

Continue a task on another model.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val teamsHandoffRequest : TeamsHandoffRequest =  // TeamsHandoffRequest | 
try {
    val result : InlineObject = apiInstance.teamsHandoff(runId, teamsHandoffRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsHandoff")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsHandoff")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **teamsHandoffRequest** | [**TeamsHandoffRequest**](TeamsHandoffRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsListRuns"></a>
# **teamsListRuns**
> TeamsListRuns200Response teamsListRuns(limit, team)

The board — recent runs, newest first.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val limit : kotlin.Int = 56 // kotlin.Int | 
val team : kotlin.String = team_example // kotlin.String | 
try {
    val result : TeamsListRuns200Response = apiInstance.teamsListRuns(limit, team)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsListRuns")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsListRuns")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**|  | [optional] [default to 50] |
| **team** | **kotlin.String**|  | [optional] |

### Return type

[**TeamsListRuns200Response**](TeamsListRuns200Response.md)

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

<a id="teamsPost"></a>
# **teamsPost**
> InlineObject teamsPost(runId, teamsPostRequest)

Post a note to a thread.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val teamsPostRequest : TeamsPostRequest =  // TeamsPostRequest | 
try {
    val result : InlineObject = apiInstance.teamsPost(runId, teamsPostRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsPost")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **teamsPostRequest** | [**TeamsPostRequest**](TeamsPostRequest.md)|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsRemoveThread"></a>
# **teamsRemoveThread**
> InlineObject teamsRemoveThread(runId, threadId)

A person removes a thread from the board.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val threadId : kotlin.String = threadId_example // kotlin.String | 
try {
    val result : InlineObject = apiInstance.teamsRemoveThread(runId, threadId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsRemoveThread")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsRemoveThread")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **threadId** | **kotlin.String**|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

<a id="teamsRunEvents"></a>
# **teamsRunEvents**
> kotlin.String teamsRunEvents(runId, after)

Tail a run — the record first, replay from &#x60;after&#x60;, then live.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
val after : kotlin.Int = 56 // kotlin.Int | Replay events with seq greater than this; absent means from the start.
try {
    val result : kotlin.String = apiInstance.teamsRunEvents(runId, after)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsRunEvents")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsRunEvents")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |
| **after** | **kotlin.Int**| Replay events with seq greater than this; absent means from the start. | [optional] |

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

<a id="teamsStopRun"></a>
# **teamsStopRun**
> InlineObject teamsStopRun(runId)

Ask the running client to stop.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = TeamsApi()
val runId : kotlin.String = runId_example // kotlin.String | 
try {
    val result : InlineObject = apiInstance.teamsStopRun(runId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TeamsApi#teamsStopRun")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TeamsApi#teamsStopRun")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **runId** | **kotlin.String**|  | |

### Return type

[**InlineObject**](InlineObject.md)

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

