# CapabilitiesAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**capabilitiesDetect**](CapabilitiesAPI.md#capabilitiesdetect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores.
[**capabilitiesList**](CapabilitiesAPI.md#capabilitieslist) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state.


# **capabilitiesDetect**
```swift
    open class func capabilitiesDetect(detectRequest: DetectRequest, completion: @escaping (_ data: DetectResponse?, _ error: Error?) -> Void)
```

Find entities in text — the model's own labels, with offsets and scores.

The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let detectRequest = DetectRequest(text: "text_example", model: "model_example", labels: ["labels_example"], budgetMs: 123) // DetectRequest | 

// Find entities in text — the model's own labels, with offsets and scores.
CapabilitiesAPI.capabilitiesDetect(detectRequest: detectRequest) { (response, error) in
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
 **detectRequest** | [**DetectRequest**](DetectRequest.md) |  | 

### Return type

[**DetectResponse**](DetectResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **capabilitiesList**
```swift
    open class func capabilitiesList(completion: @escaping (_ data: CapabilitiesDocument?, _ error: Error?) -> Void)
```

What this provider can do — which capabilities, models, measured cost and runtime state.

The discovery document a client chooses a provider from: one entry per capability (`detect`, `stt`, `tts` today; `decide`, `rerank`, `embed` as they land), each at its standard route, with the models it can serve, the loaded model's own label vocabulary (`detect`), the measured latency record, and the runtime's state. Never loads a model. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// What this provider can do — which capabilities, models, measured cost and runtime state.
CapabilitiesAPI.capabilitiesList() { (response, error) in
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

[**CapabilitiesDocument**](CapabilitiesDocument.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

