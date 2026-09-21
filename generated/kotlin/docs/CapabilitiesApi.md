# CapabilitiesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**capabilitiesDecide**](CapabilitiesApi.md#capabilitiesDecide) | **POST** /v1/decide | Typed decisions over a text — a choice, a score or a yes/no, each with a probability. |
| [**capabilitiesDetect**](CapabilitiesApi.md#capabilitiesDetect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores. |
| [**capabilitiesList**](CapabilitiesApi.md#capabilitiesList) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state. |
| [**capabilitiesRerank**](CapabilitiesApi.md#capabilitiesRerank) | **POST** /v1/rerank | Order documents by relevance to a query — a cross-encoder, no language model. |


<a id="capabilitiesDecide"></a>
# **capabilitiesDecide**
> DecideResponse capabilitiesDecide(decideRequest)

Typed decisions over a text — a choice, a score or a yes/no, each with a probability.

ChatPanel&#39;s &#x60;decide&#x60; signature (docs/capability-endpoints.md §4.2): &#x60;state&#x60; is the text judged, &#x60;questions&#x60; are keyed by identifier — a &#x60;choice&#x60; picks one of its &#x60;options&#x60;, a &#x60;score&#x60; places the state on &#x60;options&#x60; read as an ordered rubric, a &#x60;noul&#x60; is yes/no. Served BY PROXY through the adapter the config names: the &#x60;opendecision&#x60; container started under Settings › Runtime (TypeSafe&#39;s &#x60;/v1/systemone&#x60; shape, loopback-only), or a server &#x60;capabilities.decide&#x60; names (a Jev endpoint with a token, another gateway). &#x60;calibrated&#x60; in the response says whether &#x60;p&#x60; may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as &#x60;/v1/rerank&#x60;. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = CapabilitiesApi()
val decideRequest : DecideRequest =  // DecideRequest | 
try {
    val result : DecideResponse = apiInstance.capabilitiesDecide(decideRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CapabilitiesApi#capabilitiesDecide")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CapabilitiesApi#capabilitiesDecide")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **decideRequest** | [**DecideRequest**](DecideRequest.md)|  | |

### Return type

[**DecideResponse**](DecideResponse.md)

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

<a id="capabilitiesRerank"></a>
# **capabilitiesRerank**
> RerankResponse capabilitiesRerank(rerankRequest)

Order documents by relevance to a query — a cross-encoder, no language model.

The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the &#x60;reranker&#x60; container started under Settings › Runtime (Text Embeddings Inference with &#x60;BAAI/bge-reranker-v2-m3&#x60;, loopback-only), or the server &#x60;capabilities.rerank&#x60; names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 &#x60;bad_shape&#x60;, never a bad order). &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the gateway&#39;s own latency record before dialling. 404 &#x60;no_provider&#x60; until a provider is configured; 503 &#x60;provider_unavailable&#x60; when it does not answer. &#x60;GET /v1/capabilities&#x60; lists it only while configured. 

### Example
```kotlin
// Import classes:
//import net.chatpanel.sdk.infrastructure.*
//import net.chatpanel.sdk.models.*

val apiInstance = CapabilitiesApi()
val rerankRequest : RerankRequest =  // RerankRequest | 
try {
    val result : RerankResponse = apiInstance.capabilitiesRerank(rerankRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CapabilitiesApi#capabilitiesRerank")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CapabilitiesApi#capabilitiesRerank")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rerankRequest** | [**RerankRequest**](RerankRequest.md)|  | |

### Return type

[**RerankResponse**](RerankResponse.md)

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

