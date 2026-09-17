# EnginesAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enginesAppendEntry**](EnginesAPI.md#enginesappendentry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine.
[**enginesCard**](EnginesAPI.md#enginescard) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries.
[**enginesList**](EnginesAPI.md#engineslist) | **GET** /v1/engines | Every engine&#39;s card.


# **enginesAppendEntry**
```swift
    open class func enginesAppendEntry(engineKey: String, requestBody: [String: JSONValue], completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

Append a ledger entry for an engine.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let engineKey = "engineKey_example" // String | 
let requestBody = "TODO" // [String: JSONValue] | 

// Append a ledger entry for an engine.
EnginesAPI.enginesAppendEntry(engineKey: engineKey, requestBody: requestBody) { (response, error) in
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
 **engineKey** | **String** |  | 
 **requestBody** | [**[String: JSONValue]**](JSONValue.md) |  | 

### Return type

**[String: JSONValue]**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enginesCard**
```swift
    open class func enginesCard(engineKey: String, entries: Bool? = nil, minCalls: Int? = nil, completion: @escaping (_ data: [String: JSONValue]?, _ error: Error?) -> Void)
```

One engine's card, optionally with entries.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let engineKey = "engineKey_example" // String | 
let entries = true // Bool |  (optional)
let minCalls = 987 // Int |  (optional)

// One engine's card, optionally with entries.
EnginesAPI.enginesCard(engineKey: engineKey, entries: entries, minCalls: minCalls) { (response, error) in
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
 **engineKey** | **String** |  | 
 **entries** | **Bool** |  | [optional] 
 **minCalls** | **Int** |  | [optional] 

### Return type

**[String: JSONValue]**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enginesList**
```swift
    open class func enginesList(minCalls: Int? = nil, completion: @escaping (_ data: EnginesList200Response?, _ error: Error?) -> Void)
```

Every engine's card.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let minCalls = 987 // Int |  (optional)

// Every engine's card.
EnginesAPI.enginesList(minCalls: minCalls) { (response, error) in
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
 **minCalls** | **Int** |  | [optional] 

### Return type

[**EnginesList200Response**](EnginesList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

