# RuntimeApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**runtimeEngine**](RuntimeApi.md#runtimeEngine) | **POST** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed). |
| [**runtimeService**](RuntimeApi.md#runtimeService) | **POST** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it. |
| [**runtimeStatus**](RuntimeApi.md#runtimeStatus) | **GET** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services. |


<a id="runtimeEngine"></a>
# **runtimeEngine**
> RuntimeActionResult runtimeEngine(name, runtimeEngineRequest)

Start the container engine (Podman — creates and starts its machine where one is needed).

&#x60;{ action: &#39;start&#39; }&#x60;. Podman on macOS and Windows runs containers in a machine: made on first start (&#x60;podman machine init&#x60;), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RuntimeApi()
val name : kotlin.String = name_example // kotlin.String | 
val runtimeEngineRequest : RuntimeEngineRequest =  // RuntimeEngineRequest | 
try {
    val result : RuntimeActionResult = apiInstance.runtimeEngine(name, runtimeEngineRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RuntimeApi#runtimeEngine")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RuntimeApi#runtimeEngine")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **kotlin.String**|  | [enum: podman, docker] |
| **runtimeEngineRequest** | [**RuntimeEngineRequest**](RuntimeEngineRequest.md)|  | [optional] |

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

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

<a id="runtimeService"></a>
# **runtimeService**
> RuntimeActionResult runtimeService(id, runtimeServiceRequest)

Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it.

&#x60;{ action: &#39;start&#39; | &#39;stop&#39; }&#x60;. &#x60;start&#x60; brings the engine up if it is not, runs the service&#39;s container from its kit (SearXNG: &#x60;127.0.0.1:8888&#x60;, JSON on, the limiter off, a random secret, capabilities dropped; &#x60;reranker&#x60; on 8889 and &#x60;opendecision&#x60; on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (&#x60;search.searxng.url&#x60;; &#x60;capabilities.rerank&#x60; / &#x60;capabilities.decide&#x60;, so &#x60;/v1/rerank&#x60; and &#x60;/v1/decide&#x60; are served and listed). &#x60;stop&#x60; stops the container and clears what it set. &#x60;{ action: &#39;model&#39;, model }&#x60; (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (&#x60;GET /v1/runtime&#x60; &#x60;services.&lt;id&gt;.models&#x60;) or a Hugging Face &#x60;owner/name&#x60; — gated by the container ENGINE&#39;s memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RuntimeApi()
val id : kotlin.String = id_example // kotlin.String | 
val runtimeServiceRequest : RuntimeServiceRequest =  // RuntimeServiceRequest | 
try {
    val result : RuntimeActionResult = apiInstance.runtimeService(id, runtimeServiceRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RuntimeApi#runtimeService")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RuntimeApi#runtimeService")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.String**|  | [enum: searxng, reranker, opendecision] |
| **runtimeServiceRequest** | [**RuntimeServiceRequest**](RuntimeServiceRequest.md)|  | [optional] |

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

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

<a id="runtimeStatus"></a>
# **runtimeStatus**
> RuntimeDocument runtimeStatus()

The runtime — the process sandbox, what is running now, the container engine, the services.

One document for Settings › Runtime. &#x60;sandbox&#x60; is the bridge&#39;s own (&#x60;/health.sandbox&#x60;: enabled, mode &#x60;open&#x60; | &#x60;allowlist&#x60; | &#x60;none&#x60;, the runtime found, the reason when none, the global &#x60;extras&#x60;, whether a process can get a session of its own, and &#x60;refused&#x60; — the last hosts any process was refused, names only). &#x60;processes&#x60; lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. &#x60;engines&#x60; says which container engine exists (&#x60;podman&#x60; first, &#x60;docker&#x60;) and whether it can run a container now; when none does, &#x60;install&#x60; carries the command for this platform — shown to the person, never run by the gateway. &#x60;services&#x60; is the catalogue: &#x60;searxng&#x60; with its state (&#x60;no-engine&#x60; | &#x60;engine-stopped&#x60; | &#x60;absent&#x60; | &#x60;stopped&#x60; | &#x60;running&#x60;), its loopback URL and whether it answers. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = RuntimeApi()
try {
    val result : RuntimeDocument = apiInstance.runtimeStatus()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RuntimeApi#runtimeStatus")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RuntimeApi#runtimeStatus")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RuntimeDocument**](RuntimeDocument.md)

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

