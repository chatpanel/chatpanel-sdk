# ChatApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chatCompletions**](ChatApi.md#chatCompletions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible). |


<a id="chatCompletions"></a>
# **chatCompletions**
> ChatCompletion chatCompletions(chatCompletionRequest, xChatPanelRedaction, xChatPanelRun)

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by &#x60;model&#x60;. With &#x60;stream: true&#x60; the response is &#x60;text/event-stream&#x60; of OpenAI chunk objects ending in &#x60;data: [DONE]&#x60;. Send &#x60;tools&#x60; so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. &#x60;X-ChatPanel-Redaction: off&#x60; is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace.  **Permission prompts (gateway 0.25.0+).** List a function tool named &#x60;permission_prompt&#x60; to say your client can answer an agent&#39;s \&quot;may I run this?\&quot; — the gateway strips it from what the agent sees and lets the agent ask instead of denying headlessly. The question arrives as a &#x60;tool_calls&#x60; stop on that tool, its arguments &#x60;{ tool, input, description, path, rules }&#x60;; answer with a &#x60;tool&#x60; message whose content is the JSON &#x60;{ \&quot;behavior\&quot;: \&quot;allow\&quot; | \&quot;deny\&quot;, \&quot;scope\&quot;: \&quot;once\&quot; | \&quot;chat\&quot;, \&quot;message\&quot;?: string }&#x60;. Anything else is a deny.  **Two lanes.** An API destination (a cloud or local model endpoint) is a proxy hop and is open to any local caller. An AGENT destination (&#x60;codex&#x60;, &#x60;claude&#x60;, &#x60;opencode&#x60;, … — &#x60;provider_type: agent&#x60; in &#x60;GET /v1/models&#x60;) spawns a process on this machine, so the caller must hold the gateway token (0.9.0+): without it the gateway answers **401** &#x60;{ type: &#39;auth&#39;, code: &#39;agent_lane_token_required&#39; }&#x60;. The SDKs surface that as &#x60;ForbiddenError&#x60; with &#x60;status&#x60; 401. 

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

