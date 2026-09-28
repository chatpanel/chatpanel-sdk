# ThreadsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**threadsSend**](ThreadsApi.md#threadsSend) | **POST** /v1/threads/send | Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat. |


<a id="threadsSend"></a>
# **threadsSend**
> ThreadsSend200Response threadsSend(threadsSendRequest)

Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat.

The chat&#39;s own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; &#x60;dryRun&#x60; returns the chat&#39;s title and model for that question without running anything.

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ThreadsApi()
val threadsSendRequest : ThreadsSendRequest =  // ThreadsSendRequest | 
try {
    val result : ThreadsSend200Response = apiInstance.threadsSend(threadsSendRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ThreadsApi#threadsSend")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ThreadsApi#threadsSend")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **threadsSendRequest** | [**ThreadsSendRequest**](ThreadsSendRequest.md)|  | |

### Return type

[**ThreadsSend200Response**](ThreadsSend200Response.md)

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

