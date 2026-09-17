# MemoryAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**memoryForget**](MemoryAPI.md#memoryforget) | **POST** /v1/memory/forget | Forget memories matching an id or words.
[**memoryList**](MemoryAPI.md#memorylist) | **GET** /v1/memory/list | Every memory.
[**memoryRecall**](MemoryAPI.md#memoryrecall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them.
[**memoryRemember**](MemoryAPI.md#memoryremember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded.
[**memorySync**](MemoryAPI.md#memorysync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set.


# **memoryForget**
```swift
    open class func memoryForget(memoryForgetRequest: MemoryForgetRequest, completion: @escaping (_ data: MemoryForget200Response?, _ error: Error?) -> Void)
```

Forget memories matching an id or words.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let memoryForgetRequest = memory_forget_request(query: "query_example") // MemoryForgetRequest | 

// Forget memories matching an id or words.
MemoryAPI.memoryForget(memoryForgetRequest: memoryForgetRequest) { (response, error) in
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
 **memoryForgetRequest** | [**MemoryForgetRequest**](MemoryForgetRequest.md) |  | 

### Return type

[**MemoryForget200Response**](MemoryForget200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **memoryList**
```swift
    open class func memoryList(completion: @escaping (_ data: MemoryList?, _ error: Error?) -> Void)
```

Every memory.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Every memory.
MemoryAPI.memoryList() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**MemoryList**](MemoryList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **memoryRecall**
```swift
    open class func memoryRecall(recallRequest: RecallRequest, completion: @escaping (_ data: RecallResponse?, _ error: Error?) -> Void)
```

The memories relevant to a text, and a prompt block that carries them.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let recallRequest = RecallRequest(text: "text_example", scopes: ["scopes_example"], limit: 123, maxChars: 123) // RecallRequest | 

// The memories relevant to a text, and a prompt block that carries them.
MemoryAPI.memoryRecall(recallRequest: recallRequest) { (response, error) in
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
 **recallRequest** | [**RecallRequest**](RecallRequest.md) |  | 

### Return type

[**RecallResponse**](RecallResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **memoryRemember**
```swift
    open class func memoryRemember(rememberRequest: RememberRequest, completion: @escaping (_ data: RememberResponse?, _ error: Error?) -> Void)
```

Save a durable fact. Never anonymous — `source` is recorded.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let rememberRequest = RememberRequest(text: "text_example", kind: "kind_example", scope: "scope_example", tags: ["tags_example"], source: MemorySource(via: "via_example", surface: "surface_example", agent: "agent_example", ref: "ref_example")) // RememberRequest | 

// Save a durable fact. Never anonymous — `source` is recorded.
MemoryAPI.memoryRemember(rememberRequest: rememberRequest) { (response, error) in
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
 **rememberRequest** | [**RememberRequest**](RememberRequest.md) |  | 

### Return type

[**RememberResponse**](RememberResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **memorySync**
```swift
    open class func memorySync(memorySyncRequest: MemorySyncRequest, completion: @escaping (_ data: MemorySyncResponse?, _ error: Error?) -> Void)
```

Two-way merge in one round trip — push what you have, receive the full set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let memorySyncRequest = memory_sync_request(upserts: [Memory(id: "id_example", text: "text_example", kind: "kind_example", scope: "scope_example", tags: ["tags_example"], createdAt: 123, updatedAt: 123, source: MemorySource(via: "via_example", surface: "surface_example", agent: "agent_example", ref: "ref_example"))], removes: ["removes_example"]) // MemorySyncRequest | 

// Two-way merge in one round trip — push what you have, receive the full set.
MemoryAPI.memorySync(memorySyncRequest: memorySyncRequest) { (response, error) in
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
 **memorySyncRequest** | [**MemorySyncRequest**](MemorySyncRequest.md) |  | 

### Return type

[**MemorySyncResponse**](MemorySyncResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

