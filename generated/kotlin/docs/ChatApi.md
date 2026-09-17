# ChatApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chatCompletions**](ChatApi.md#chatCompletions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible). |


<a id="chatCompletions"></a>
# **chatCompletions**
> ChatCompletion chatCompletions(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun)

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by &#x60;model&#x60;. With &#x60;stream: true&#x60; the response is &#x60;text/event-stream&#x60; of OpenAI chunk objects ending in &#x60;data: [DONE]&#x60;. Send &#x60;tools&#x60; so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. &#x60;X-ChatPanel-Redaction: off&#x60; is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = ChatApi()
val chatCompletionRequest : ChatCompletionRequest =  // ChatCompletionRequest | 
val xChatPanelRedaction : kotlin.String = xChatPanelRedaction_example // kotlin.String | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace.
val xChatPanelRun : kotlin.String = xChatPanelRun_example // kotlin.String | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token.
try {
    val result : ChatCompletion = apiInstance.chatCompletions(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling ChatApi#chatCompletions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling ChatApi#chatCompletions")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md)|  | |
| **xChatPanelRedaction** | **kotlin.String**| Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | [optional] [enum: false] |
| **xChatPanelRun** | **kotlin.String**| A team role&#39;s run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | [optional] |

### Return type

[**ChatCompletion**](ChatCompletion.md)

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

