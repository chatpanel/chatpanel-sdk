# PrefsAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**prefsDelete**](PrefsAPI.md#prefsdelete) | **DELETE** /v1/prefs | Remove one section.
[**prefsEvents**](PrefsAPI.md#prefsevents) | **GET** /v1/prefs/events | Live — which sections another client wrote.
[**prefsGet**](PrefsAPI.md#prefsget) | **GET** /v1/prefs | The shared sections, or only their stamps.
[**prefsPut**](PrefsAPI.md#prefsput) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp.


# **prefsDelete**
```swift
    open class func prefsDelete(section: String, completion: @escaping (_ data: PrefsDelete200Response?, _ error: Error?) -> Void)
```

Remove one section.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let section = "section_example" // String | 

// Remove one section.
PrefsAPI.prefsDelete(section: section) { (response, error) in
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
 **section** | **String** |  | 

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefsEvents**
```swift
    open class func prefsEvents(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Live — which sections another client wrote.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// Live — which sections another client wrote.
PrefsAPI.prefsEvents() { (response, error) in
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

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefsGet**
```swift
    open class func prefsGet(section: String? = nil, stamps: Bool? = nil, completion: @escaping (_ data: Prefs?, _ error: Error?) -> Void)
```

The shared sections, or only their stamps.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let section = "section_example" // String |  (optional)
let stamps = true // Bool | Only `{ revision, stamps }`. (optional)

// The shared sections, or only their stamps.
PrefsAPI.prefsGet(section: section, stamps: stamps) { (response, error) in
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
 **section** | **String** |  | [optional] 
 **stamps** | **Bool** | Only &#x60;{ revision, stamps }&#x60;. | [optional] 

### Return type

[**Prefs**](Prefs.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefsPut**
```swift
    open class func prefsPut(prefsWrite: PrefsWrite, completion: @escaping (_ data: PrefsWriteResult?, _ error: Error?) -> Void)
```

Write sections; per-section last-writer-wins by stamp.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let prefsWrite = PrefsWrite(sections: "TODO", by: "by_example") // PrefsWrite | 

// Write sections; per-section last-writer-wins by stamp.
PrefsAPI.prefsPut(prefsWrite: prefsWrite) { (response, error) in
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
 **prefsWrite** | [**PrefsWrite**](PrefsWrite.md) |  | 

### Return type

[**PrefsWriteResult**](PrefsWriteResult.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

