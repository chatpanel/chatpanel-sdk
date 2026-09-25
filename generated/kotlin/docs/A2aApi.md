# A2aApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**a2aAgents**](A2aApi.md#a2aAgents) | **GET** /a2a/agents | Every remote agent this gateway has spoken to. |
| [**a2aCard**](A2aApi.md#a2aCard) | **POST** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held. |
| [**a2aMessage**](A2aApi.md#a2aMessage) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer. |
| [**a2aStream**](A2aApi.md#a2aStream) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced. |
| [**a2aTask**](A2aApi.md#a2aTask) | **POST** /a2a/task | Poll or cancel a task on a remote agent. |


<a id="a2aAgents"></a>
# **a2aAgents**
> A2aAgents200Response a2aAgents()

Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = A2aApi()
try {
    val result : A2aAgents200Response = apiInstance.a2aAgents()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling A2aApi#a2aAgents")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling A2aApi#a2aAgents")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**A2aAgents200Response**](A2aAgents200Response.md)

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

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="a2aCard"></a>
# **a2aCard**
> A2aCard200Response a2aCard(a2aCardRequest)

Fetch a remote agent&#39;s card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with &#x60;If-None-Match&#x60;, so &#x60;fresh: false&#x60; means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = A2aApi()
val a2aCardRequest : A2aCardRequest =  // A2aCardRequest | 
try {
    val result : A2aCard200Response = apiInstance.a2aCard(a2aCardRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling A2aApi#a2aCard")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling A2aApi#a2aCard")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **a2aCardRequest** | [**A2aCardRequest**](A2aCardRequest.md)|  | |

### Return type

[**A2aCard200Response**](A2aCard200Response.md)

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

<a id="a2aMessage"></a>
# **a2aMessage**
> A2AResult a2aMessage(a2ASendRequest)

Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so &#x60;kind&#x60; says which. &#x60;text&#x60; and &#x60;needs&#x60; are derived here rather than by each caller: &#x60;needs&#x60; is &#x60;answer&#x60; for an input stop and &#x60;approval&#x60; for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = A2aApi()
val a2ASendRequest : A2ASendRequest =  // A2ASendRequest | 
try {
    val result : A2AResult = apiInstance.a2aMessage(a2ASendRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling A2aApi#a2aMessage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling A2aApi#a2aMessage")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md)|  | |

### Return type

[**A2AResult**](A2AResult.md)

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

<a id="a2aStream"></a>
# **a2aStream**
> kotlin.String a2aStream(a2ASendRequest)

Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — &#x60;task&#x60;, &#x60;status&#x60;, &#x60;artifact&#x60;, &#x60;message&#x60;, then &#x60;done&#x60; with the final result (or &#x60;error&#x60;). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise &#x60;capabilities.streaming&#x60;.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = A2aApi()
val a2ASendRequest : A2ASendRequest =  // A2ASendRequest | 
try {
    val result : kotlin.String = apiInstance.a2aStream(a2ASendRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling A2aApi#a2aStream")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling A2aApi#a2aStream")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md)|  | |

### Return type

**kotlin.String**

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

<a id="a2aTask"></a>
# **a2aTask**
> A2AResult a2aTask(a2aTaskRequest)

Poll or cancel a task on a remote agent.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = A2aApi()
val a2aTaskRequest : A2aTaskRequest =  // A2aTaskRequest | 
try {
    val result : A2AResult = apiInstance.a2aTask(a2aTaskRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling A2aApi#a2aTask")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling A2aApi#a2aTask")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **a2aTaskRequest** | [**A2aTaskRequest**](A2aTaskRequest.md)|  | |

### Return type

[**A2AResult**](A2AResult.md)

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

