# ThreadsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**threadsSend**](ThreadsAPI.md#threadssend) | **POST** /v1/threads/send | Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat.


# **threadsSend**
```swift
    open class func threadsSend(threadsSendRequest: ThreadsSendRequest, completion: @escaping (_ data: ThreadsSend200Response?, _ error: Error?) -> Void)
```

Ask one of the person's chats and get its answer; the exchange is added to that chat.

The chat's own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; `dryRun` returns the chat's title and model for that question without running anything.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let threadsSendRequest = threads_send_request(to: "to_example", message: "message_example", from: threads_send_request_from(id: "id_example", title: "title_example"), dryRun: false) // ThreadsSendRequest | 

// Ask one of the person's chats and get its answer; the exchange is added to that chat.
ThreadsAPI.threadsSend(threadsSendRequest: threadsSendRequest) { (response, error) in
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
 **threadsSendRequest** | [**ThreadsSendRequest**](ThreadsSendRequest.md) |  | 

### Return type

[**ThreadsSend200Response**](ThreadsSend200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

