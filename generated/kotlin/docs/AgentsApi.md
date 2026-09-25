# AgentsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**agentsExportDef**](AgentsApi.md#agentsExportDef) | **POST** /agent-defs/export | Write an agent definition into another tool&#39;s folder. |
| [**agentsExportPlan**](AgentsApi.md#agentsExportPlan) | **POST** /agent-defs/export-plan | What an export would write, and what the target cannot carry — without writing it. |
| [**agentsGetDef**](AgentsApi.md#agentsGetDef) | **GET** /agent-defs/{agentId} | One agent definition, prompt included. |
| [**agentsListDefs**](AgentsApi.md#agentsListDefs) | **GET** /agent-defs | The agent definitions on this machine, from every tool that writes one. |
| [**agentsRate**](AgentsApi.md#agentsRate) | **POST** /v1/agents/{agentId}/scorecard | A person rates the agent&#39;s work on a run, task or job. |
| [**agentsScorecard**](AgentsApi.md#agentsScorecard) | **GET** /v1/agents/{agentId}/scorecard | One agent&#39;s attested scorecard. |
| [**agentsScorecards**](AgentsApi.md#agentsScorecards) | **GET** /v1/agents/scorecards | Every agent&#39;s scorecard. |


<a id="agentsExportDef"></a>
# **agentsExportDef**
> AgentsExportDef200Response agentsExportDef(agentExportRequest)

Write an agent definition into another tool&#39;s folder.

Only from a named action. The file is backed up before it is touched, and one ChatPanel did not write — or one edited since it did — is refused with &#x60;NOT_OURS&#x60; unless &#x60;overwrite&#x60; is set. Which of those applies is what &#x60;export-plan&#x60; reports as &#x60;status&#x60;.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AgentsApi()
val agentExportRequest : AgentExportRequest =  // AgentExportRequest | 
try {
    val result : AgentsExportDef200Response = apiInstance.agentsExportDef(agentExportRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AgentsApi#agentsExportDef")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AgentsApi#agentsExportDef")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md)|  | |

### Return type

[**AgentsExportDef200Response**](AgentsExportDef200Response.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
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

<a id="agentsExportPlan"></a>
# **agentsExportPlan**
> AgentExportPlan agentsExportPlan(agentExportRequest)

What an export would write, and what the target cannot carry — without writing it.

A separate call from the export itself, deliberately: \&quot;show me what you are about to do to my Claude Code directory\&quot; is a question a person answers before saying yes, and a dry run sharing a code path with the real thing is one edit away from not being dry.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AgentsApi()
val agentExportRequest : AgentExportRequest =  // AgentExportRequest | 
try {
    val result : AgentExportPlan = apiInstance.agentsExportPlan(agentExportRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AgentsApi#agentsExportPlan")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AgentsApi#agentsExportPlan")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agentExportRequest** | [**AgentExportRequest**](AgentExportRequest.md)|  | |

### Return type

[**AgentExportPlan**](AgentExportPlan.md)

### Authorization


Configure tokenHeader:
    ApiClient.apiKey["X-ChatPanel-Token"] = ""
    ApiClient.apiKeyPrefix["X-ChatPanel-Token"] = ""
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

<a id="agentsGetDef"></a>
# **agentsGetDef**
> AgentsGetDef200Response agentsGetDef(agentId, workdir)

One agent definition, prompt included.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AgentsApi()
val agentId : kotlin.String = agentId_example // kotlin.String | One path segment; slashes and `..` are refused.
val workdir : kotlin.String = workdir_example // kotlin.String | 
try {
    val result : AgentsGetDef200Response = apiInstance.agentsGetDef(agentId, workdir)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AgentsApi#agentsGetDef")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AgentsApi#agentsGetDef")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **agentId** | **kotlin.String**| One path segment; slashes and &#x60;..&#x60; are refused. | |
| **workdir** | **kotlin.String**|  | [optional] |

### Return type

[**AgentsGetDef200Response**](AgentsGetDef200Response.md)

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

<a id="agentsListDefs"></a>
# **agentsListDefs**
> AgentsListDefs200Response agentsListDefs(workdir, dir)

The agent definitions on this machine, from every tool that writes one.

&#x60;.claude/agents/_*.md&#x60;, &#x60;.codex/agents/_*.toml&#x60;, &#x60;~/.chatpanel/agents/_*.json&#x60; and the project-local equivalents, each read in its own dialect and returned in one shape. No prompts — &#x60;promptChars&#x60; only, for the same reason &#x60;GET /skills&#x60; omits them.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = AgentsApi()
val workdir : kotlin.String = workdir_example // kotlin.String | Also read this project's own agent folders, ahead of the home ones.
val dir : kotlin.String = dir_example // kotlin.String | An extra absolute folder to scan. Repeatable.
try {
    val result : AgentsListDefs200Response = apiInstance.agentsListDefs(workdir, dir)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AgentsApi#agentsListDefs")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AgentsApi#agentsListDefs")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **workdir** | **kotlin.String**| Also read this project&#39;s own agent folders, ahead of the home ones. | [optional] |
| **dir** | **kotlin.String**| An extra absolute folder to scan. Repeatable. | [optional] |

### Return type

[**AgentsListDefs200Response**](AgentsListDefs200Response.md)

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

