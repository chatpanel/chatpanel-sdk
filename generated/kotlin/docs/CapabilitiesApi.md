# CapabilitiesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**capabilitiesDetect**](CapabilitiesApi.md#capabilitiesDetect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores. |
| [**capabilitiesList**](CapabilitiesApi.md#capabilitiesList) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state. |


<a id="capabilitiesDetect"></a>
# **capabilitiesDetect**
> DetectResponse capabilitiesDetect(detectRequest)

Find entities in text — the model&#39;s own labels, with offsets and scores.

The standard &#x60;detect&#x60; signature over the in-process entity detector. Labels are the model&#39;s own (&#x60;private_person&#x60;, &#x60;PER&#x60;, &#x60;GIVENNAME&#x60;…) — the client maps them; the vocabulary is listed by &#x60;GET /v1/capabilities&#x60;. &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the provider&#39;s own latency record before the model runs, never missed. An engine that is still loading answers 503 &#x60;detector_unready&#x60;; an empty &#x60;entities&#x60; on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = CapabilitiesApi()
val detectRequest : DetectRequest =  // DetectRequest | 
try {
    val result : DetectResponse = apiInstance.capabilitiesDetect(detectRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CapabilitiesApi#capabilitiesDetect")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CapabilitiesApi#capabilitiesDetect")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **detectRequest** | [**DetectRequest**](DetectRequest.md)|  | |

### Return type

[**DetectResponse**](DetectResponse.md)

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

<a id="capabilitiesList"></a>
# **capabilitiesList**
> CapabilitiesDocument capabilitiesList()

What this provider can do — which capabilities, models, measured cost and runtime state.

The discovery document a client chooses a provider from: one entry per capability (&#x60;detect&#x60;, &#x60;stt&#x60;, &#x60;tts&#x60; today; &#x60;decide&#x60;, &#x60;rerank&#x60;, &#x60;embed&#x60; as they land), each at its standard route, with the models it can serve, the loaded model&#39;s own label vocabulary (&#x60;detect&#x60;), the measured latency record, and the runtime&#39;s state. Never loads a model. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = CapabilitiesApi()
try {
    val result : CapabilitiesDocument = apiInstance.capabilitiesList()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CapabilitiesApi#capabilitiesList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CapabilitiesApi#capabilitiesList")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CapabilitiesDocument**](CapabilitiesDocument.md)

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

 - **Content-Type**: Not defined
 - **Accept**: application/json

