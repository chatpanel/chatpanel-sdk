# BrowserAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**browserAnnounce**](BrowserAPI.md#browserannounce) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance.
[**browserCall**](BrowserAPI.md#browsercall) | **POST** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result.
[**browserResult**](BrowserAPI.md#browserresult) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it.
[**browserStatus**](BrowserAPI.md#browserstatus) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers.
[**browserStream**](BrowserAPI.md#browserstream) | **GET** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run.


# **browserAnnounce**
```swift
    open class func browserAnnounce(browserAnnounce: BrowserAnnounce, completion: @escaping (_ data: BrowserAnnounce200Response?, _ error: Error?) -> Void)
```

The browser says what it offers — its page tool spec and guidance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let browserAnnounce = BrowserAnnounce(session: "session_example", browser: BrowserInfo(kind: "kind_example", version: "version_example"), _extension: "_extension_example", spec: "TODO", system: "system_example", actions: ["TODO"]) // BrowserAnnounce | 

// The browser says what it offers — its page tool spec and guidance.
BrowserAPI.browserAnnounce(browserAnnounce: browserAnnounce) { (response, error) in
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
 **browserAnnounce** | [**BrowserAnnounce**](BrowserAnnounce.md) |  | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browserCall**
```swift
    open class func browserCall(browserCall: BrowserCall, completion: @escaping (_ data: BrowserCallResult?, _ error: Error?) -> Void)
```

Run one page action in the person's browser and wait for its result.

Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let browserCall = BrowserCall(action: "action_example", args: "TODO", task: "task_example", timeoutMs: 123) // BrowserCall | 

// Run one page action in the person's browser and wait for its result.
BrowserAPI.browserCall(browserCall: browserCall) { (response, error) in
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
 **browserCall** | [**BrowserCall**](BrowserCall.md) |  | 

### Return type

[**BrowserCallResult**](BrowserCallResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browserResult**
```swift
    open class func browserResult(browserResult: BrowserResult, completion: @escaping (_ data: BrowserAnnounce200Response?, _ error: Error?) -> Void)
```

The browser answers a call it ran. Only the session the call went to may answer it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let browserResult = BrowserResult(session: "session_example", id: "id_example", result: BrowserResult_result(text: "text_example", image: "image_example")) // BrowserResult | 

// The browser answers a call it ran. Only the session the call went to may answer it.
BrowserAPI.browserResult(browserResult: browserResult) { (response, error) in
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
 **browserResult** | [**BrowserResult**](BrowserResult.md) |  | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browserStatus**
```swift
    open class func browserStatus(completion: @escaping (_ data: BrowserStatus?, _ error: Error?) -> Void)
```

Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension's own — a client hands them to its model as they are.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Is a browser connected, which one, and the page tool it offers.
BrowserAPI.browserStatus() { (response, error) in
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

[**BrowserStatus**](BrowserStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browserStream**
```swift
    open class func browserStream(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

The browser's end — `hello` with its session, then a `call` frame per action to run.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// The browser's end — `hello` with its session, then a `call` frame per action to run.
BrowserAPI.browserStream() { (response, error) in
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

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

