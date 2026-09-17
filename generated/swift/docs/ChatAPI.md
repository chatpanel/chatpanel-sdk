# ChatAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chatCompletions**](ChatAPI.md#chatcompletions) | **POST** /v1/chat/completions | One chat turn through the gateway (OpenAI-compatible).


# **chatCompletions**
```swift
    open class func chatCompletions(chatCompletionRequest: ChatCompletionRequest, xChatPanelRedaction: XChatPanelRedaction_chatCompletions? = nil, xChatPanelRun: String? = nil, completion: @escaping (_ data: ChatCompletion?, _ error: Error?) -> Void)
```

One chat turn through the gateway (OpenAI-compatible).

Redacted on the way out, restored on the way back, routed by `model`. With `stream: true` the response is `text/event-stream` of OpenAI chunk objects ending in `data: [DONE]`. Send `tools` so a redacted turn can still act: the gateway relays a tool call back with real arguments and redacts the result. `X-ChatPanel-Redaction: off` is honoured only from a token-bearing caller (0.6.69+) and is recorded in the trace. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let chatCompletionRequest = ChatCompletionRequest(model: "model_example", messages: [ChatMessage(role: "role_example", content: ChatMessage_content(), name: "name_example", toolCalls: ["TODO"], toolCallId: "toolCallId_example")], stream: false, streamOptions: "TODO", tools: ["TODO"], toolChoice: 123, temperature: 123, maxTokens: 123) // ChatCompletionRequest | 
let xChatPanelRedaction = "xChatPanelRedaction_example" // String | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. (optional)
let xChatPanelRun = "xChatPanelRun_example" // String | A team role's run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. (optional)

// One chat turn through the gateway (OpenAI-compatible).
ChatAPI.chatCompletions(chatCompletionRequest: chatCompletionRequest, xChatPanelRedaction: xChatPanelRedaction, xChatPanelRun: xChatPanelRun) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md) |  | 
 **xChatPanelRedaction** | **String** | Turn redaction off for this turn — honoured only from a token-bearing caller (0.6.69+), recorded in the trace. | [optional] 
 **xChatPanelRun** | **String** | A team role&#39;s run context (URL-encoded JSON) for the bridge (0.6.89+). Never a token. | [optional] 

### Return type

[**ChatCompletion**](ChatCompletion.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

