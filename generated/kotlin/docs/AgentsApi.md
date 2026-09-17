# AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**agentsRate**](AgentsApi.md#agentsRate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**agentsScorecard**](AgentsApi.md#agentsScorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**agentsScorecards**](AgentsApi.md#agentsScorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |


<a id="agentsRate"></a>
# **agentsRate**
> kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt; agentsRate(agentId, agentsRateRequest)

A person rates the agent&#39;s work on a run, task or job.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AgentsApi()
val agentId : kotlin.String = agentId_example // kotlin.String | 
val agentsRateRequest : AgentsRateRequest =  // AgentsRateRequest | 
try {
    val result : kotlin.collections.Map<kotlin.String, kotlin.Any> = apiInstance.agentsRate(agentId, agentsRateRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AgentsApi#agentsRate")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AgentsApi#agentsRate")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agentId** | **kotlin.String**|  | |
| **agentsRateRequest** | [**AgentsRateRequest**](AgentsRateRequest.md)|  | |

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

<a id="agentsScorecard"></a>
# **agentsScorecard**
> kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt; agentsScorecard(agentId)

One agent&#39;s attested scorecard.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AgentsApi()
val agentId : kotlin.String = agentId_example // kotlin.String | 
try {
    val result : kotlin.collections.Map<kotlin.String, kotlin.Any> = apiInstance.agentsScorecard(agentId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AgentsApi#agentsScorecard")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AgentsApi#agentsScorecard")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agentId** | **kotlin.String**|  | |

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

<a id="agentsScorecards"></a>
# **agentsScorecards**
> AgentsScorecards200Response agentsScorecards()

Every agent&#39;s scorecard.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AgentsApi()
try {
    val result : AgentsScorecards200Response = apiInstance.agentsScorecards()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AgentsApi#agentsScorecards")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AgentsApi#agentsScorecards")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AgentsScorecards200Response**](AgentsScorecards200Response.md)

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

