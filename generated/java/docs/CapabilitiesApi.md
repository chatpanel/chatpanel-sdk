# CapabilitiesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**capabilitiesDecide**](CapabilitiesApi.md#capabilitiesDecide) | **POST** /v1/decide | Typed decisions over a text — a choice, a score or a yes/no, each with a probability. |
| [**capabilitiesDecideWithHttpInfo**](CapabilitiesApi.md#capabilitiesDecideWithHttpInfo) | **POST** /v1/decide | Typed decisions over a text — a choice, a score or a yes/no, each with a probability. |
| [**capabilitiesDetect**](CapabilitiesApi.md#capabilitiesDetect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores. |
| [**capabilitiesDetectWithHttpInfo**](CapabilitiesApi.md#capabilitiesDetectWithHttpInfo) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores. |
| [**capabilitiesList**](CapabilitiesApi.md#capabilitiesList) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state. |
| [**capabilitiesListWithHttpInfo**](CapabilitiesApi.md#capabilitiesListWithHttpInfo) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state. |
| [**capabilitiesRerank**](CapabilitiesApi.md#capabilitiesRerank) | **POST** /v1/rerank | Order documents by relevance to a query — a cross-encoder, no language model. |
| [**capabilitiesRerankWithHttpInfo**](CapabilitiesApi.md#capabilitiesRerankWithHttpInfo) | **POST** /v1/rerank | Order documents by relevance to a query — a cross-encoder, no language model. |



## capabilitiesDecide

> DecideResponse capabilitiesDecide(decideRequest)

Typed decisions over a text — a choice, a score or a yes/no, each with a probability.

ChatPanel&#39;s &#x60;decide&#x60; signature (docs/capability-endpoints.md §4.2): &#x60;state&#x60; is the text judged, &#x60;questions&#x60; are keyed by identifier — a &#x60;choice&#x60; picks one of its &#x60;options&#x60;, a &#x60;score&#x60; places the state on &#x60;options&#x60; read as an ordered rubric, a &#x60;noul&#x60; is yes/no. Served BY PROXY through the adapter the config names: the &#x60;opendecision&#x60; container started under Settings › Runtime (TypeSafe&#39;s &#x60;/v1/systemone&#x60; shape, loopback-only), or a server &#x60;capabilities.decide&#x60; names (a Jev endpoint with a token, another gateway). &#x60;calibrated&#x60; in the response says whether &#x60;p&#x60; may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as &#x60;/v1/rerank&#x60;. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.CapabilitiesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        CapabilitiesApi apiInstance = new CapabilitiesApi(defaultClient);
        DecideRequest decideRequest = new DecideRequest(); // DecideRequest | 
        try {
            DecideResponse result = apiInstance.capabilitiesDecide(decideRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CapabilitiesApi#capabilitiesDecide");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **decideRequest** | [**DecideRequest**](DecideRequest.md)|  | |

### Return type

[**DecideResponse**](DecideResponse.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An answer per question. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | No decision model is configured (&#x60;no_provider&#x60;), or the model asked for is not the one served (&#x60;model_not_found&#x60;). |  -  |
| **502** | The provider answered but not in the contract&#39;s shape (&#x60;bad_shape&#x60;) or with an error (&#x60;provider_error&#x60;). |  -  |
| **503** | The provider did not answer (&#x60;provider_unavailable&#x60;) or the budget cannot be met (&#x60;over_budget&#x60;). |  -  |

## capabilitiesDecideWithHttpInfo

> ApiResponse<DecideResponse> capabilitiesDecideWithHttpInfo(decideRequest)

Typed decisions over a text — a choice, a score or a yes/no, each with a probability.

ChatPanel&#39;s &#x60;decide&#x60; signature (docs/capability-endpoints.md §4.2): &#x60;state&#x60; is the text judged, &#x60;questions&#x60; are keyed by identifier — a &#x60;choice&#x60; picks one of its &#x60;options&#x60;, a &#x60;score&#x60; places the state on &#x60;options&#x60; read as an ordered rubric, a &#x60;noul&#x60; is yes/no. Served BY PROXY through the adapter the config names: the &#x60;opendecision&#x60; container started under Settings › Runtime (TypeSafe&#39;s &#x60;/v1/systemone&#x60; shape, loopback-only), or a server &#x60;capabilities.decide&#x60; names (a Jev endpoint with a token, another gateway). &#x60;calibrated&#x60; in the response says whether &#x60;p&#x60; may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as &#x60;/v1/rerank&#x60;. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.CapabilitiesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        CapabilitiesApi apiInstance = new CapabilitiesApi(defaultClient);
        DecideRequest decideRequest = new DecideRequest(); // DecideRequest | 
        try {
            ApiResponse<DecideResponse> response = apiInstance.capabilitiesDecideWithHttpInfo(decideRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling CapabilitiesApi#capabilitiesDecide");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **decideRequest** | [**DecideRequest**](DecideRequest.md)|  | |

### Return type

ApiResponse<[**DecideResponse**](DecideResponse.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An answer per question. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | No decision model is configured (&#x60;no_provider&#x60;), or the model asked for is not the one served (&#x60;model_not_found&#x60;). |  -  |
| **502** | The provider answered but not in the contract&#39;s shape (&#x60;bad_shape&#x60;) or with an error (&#x60;provider_error&#x60;). |  -  |
| **503** | The provider did not answer (&#x60;provider_unavailable&#x60;) or the budget cannot be met (&#x60;over_budget&#x60;). |  -  |


## capabilitiesDetect

> DetectResponse capabilitiesDetect(detectRequest)

Find entities in text — the model&#39;s own labels, with offsets and scores.

The standard &#x60;detect&#x60; signature over the in-process entity detector. Labels are the model&#39;s own (&#x60;private_person&#x60;, &#x60;PER&#x60;, &#x60;GIVENNAME&#x60;…) — the client maps them; the vocabulary is listed by &#x60;GET /v1/capabilities&#x60;. &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the provider&#39;s own latency record before the model runs, never missed. An engine that is still loading answers 503 &#x60;detector_unready&#x60;; an empty &#x60;entities&#x60; on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.CapabilitiesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        CapabilitiesApi apiInstance = new CapabilitiesApi(defaultClient);
        DetectRequest detectRequest = new DetectRequest(); // DetectRequest | 
        try {
            DetectResponse result = apiInstance.capabilitiesDetect(detectRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CapabilitiesApi#capabilitiesDetect");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **detectRequest** | [**DetectRequest**](DetectRequest.md)|  | |

### Return type

[**DetectResponse**](DetectResponse.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The spans found. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **503** | The detector is not ready (&#x60;detector_unready&#x60;, &#x60;detector_error&#x60;) or the budget cannot be met (&#x60;over_budget&#x60;, with &#x60;predictedMs&#x60; and &#x60;budgetMs&#x60;). |  -  |

## capabilitiesDetectWithHttpInfo

> ApiResponse<DetectResponse> capabilitiesDetectWithHttpInfo(detectRequest)

Find entities in text — the model&#39;s own labels, with offsets and scores.

The standard &#x60;detect&#x60; signature over the in-process entity detector. Labels are the model&#39;s own (&#x60;private_person&#x60;, &#x60;PER&#x60;, &#x60;GIVENNAME&#x60;…) — the client maps them; the vocabulary is listed by &#x60;GET /v1/capabilities&#x60;. &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the provider&#39;s own latency record before the model runs, never missed. An engine that is still loading answers 503 &#x60;detector_unready&#x60;; an empty &#x60;entities&#x60; on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.CapabilitiesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        CapabilitiesApi apiInstance = new CapabilitiesApi(defaultClient);
        DetectRequest detectRequest = new DetectRequest(); // DetectRequest | 
        try {
            ApiResponse<DetectResponse> response = apiInstance.capabilitiesDetectWithHttpInfo(detectRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling CapabilitiesApi#capabilitiesDetect");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **detectRequest** | [**DetectRequest**](DetectRequest.md)|  | |

### Return type

ApiResponse<[**DetectResponse**](DetectResponse.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The spans found. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |
| **503** | The detector is not ready (&#x60;detector_unready&#x60;, &#x60;detector_error&#x60;) or the budget cannot be met (&#x60;over_budget&#x60;, with &#x60;predictedMs&#x60; and &#x60;budgetMs&#x60;). |  -  |


## capabilitiesList

> CapabilitiesDocument capabilitiesList()

What this provider can do — which capabilities, models, measured cost and runtime state.

The discovery document a client chooses a provider from: one entry per capability (&#x60;detect&#x60;, &#x60;stt&#x60;, &#x60;tts&#x60; today; &#x60;decide&#x60;, &#x60;rerank&#x60;, &#x60;embed&#x60; as they land), each at its standard route, with the models it can serve, the loaded model&#39;s own label vocabulary (&#x60;detect&#x60;), the measured latency record, and the runtime&#39;s state. Never loads a model. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.CapabilitiesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        CapabilitiesApi apiInstance = new CapabilitiesApi(defaultClient);
        try {
            CapabilitiesDocument result = apiInstance.capabilitiesList();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CapabilitiesApi#capabilitiesList");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The provider&#39;s capabilities. |  -  |

## capabilitiesListWithHttpInfo

> ApiResponse<CapabilitiesDocument> capabilitiesListWithHttpInfo()

What this provider can do — which capabilities, models, measured cost and runtime state.

The discovery document a client chooses a provider from: one entry per capability (&#x60;detect&#x60;, &#x60;stt&#x60;, &#x60;tts&#x60; today; &#x60;decide&#x60;, &#x60;rerank&#x60;, &#x60;embed&#x60; as they land), each at its standard route, with the models it can serve, the loaded model&#39;s own label vocabulary (&#x60;detect&#x60;), the measured latency record, and the runtime&#39;s state. Never loads a model. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.CapabilitiesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        CapabilitiesApi apiInstance = new CapabilitiesApi(defaultClient);
        try {
            ApiResponse<CapabilitiesDocument> response = apiInstance.capabilitiesListWithHttpInfo();
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling CapabilitiesApi#capabilitiesList");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiResponse<[**CapabilitiesDocument**](CapabilitiesDocument.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The provider&#39;s capabilities. |  -  |


## capabilitiesRerank

> RerankResponse capabilitiesRerank(rerankRequest)

Order documents by relevance to a query — a cross-encoder, no language model.

The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the &#x60;reranker&#x60; container started under Settings › Runtime (Text Embeddings Inference with &#x60;BAAI/bge-reranker-v2-m3&#x60;, loopback-only), or the server &#x60;capabilities.rerank&#x60; names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 &#x60;bad_shape&#x60;, never a bad order). &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the gateway&#39;s own latency record before dialling. 404 &#x60;no_provider&#x60; until a provider is configured; 503 &#x60;provider_unavailable&#x60; when it does not answer. &#x60;GET /v1/capabilities&#x60; lists it only while configured. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.CapabilitiesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        CapabilitiesApi apiInstance = new CapabilitiesApi(defaultClient);
        RerankRequest rerankRequest = new RerankRequest(); // RerankRequest | 
        try {
            RerankResponse result = apiInstance.capabilitiesRerank(rerankRequest);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CapabilitiesApi#capabilitiesRerank");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **rerankRequest** | [**RerankRequest**](RerankRequest.md)|  | |

### Return type

[**RerankResponse**](RerankResponse.md)


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The documents&#39; indexes, best first. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | No reranker is configured (&#x60;no_provider&#x60;), or the model asked for is not the one served (&#x60;model_not_found&#x60;). |  -  |
| **502** | The provider answered but not in the contract&#39;s shape (&#x60;bad_shape&#x60;) or with an error (&#x60;provider_error&#x60;). |  -  |
| **503** | The provider did not answer (&#x60;provider_unavailable&#x60;) or the budget cannot be met (&#x60;over_budget&#x60;, with &#x60;predictedMs&#x60; and &#x60;budgetMs&#x60;). |  -  |

## capabilitiesRerankWithHttpInfo

> ApiResponse<RerankResponse> capabilitiesRerankWithHttpInfo(rerankRequest)

Order documents by relevance to a query — a cross-encoder, no language model.

The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the &#x60;reranker&#x60; container started under Settings › Runtime (Text Embeddings Inference with &#x60;BAAI/bge-reranker-v2-m3&#x60;, loopback-only), or the server &#x60;capabilities.rerank&#x60; names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 &#x60;bad_shape&#x60;, never a bad order). &#x60;budgetMs&#x60; is refused (503 &#x60;over_budget&#x60;) from the gateway&#39;s own latency record before dialling. 404 &#x60;no_provider&#x60; until a provider is configured; 503 &#x60;provider_unavailable&#x60; when it does not answer. &#x60;GET /v1/capabilities&#x60; lists it only while configured. 

### Example

```java
// Import classes:
import net.chatpanel.sdk.ApiClient;
import net.chatpanel.sdk.ApiException;
import net.chatpanel.sdk.ApiResponse;
import net.chatpanel.sdk.Configuration;
import net.chatpanel.sdk.auth.*;
import net.chatpanel.sdk.models.*;
import net.chatpanel.sdk.api.CapabilitiesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("http://127.0.0.1:4320");
        
        // Configure HTTP bearer authorization: gatewayToken
        HttpBearerAuth gatewayToken = (HttpBearerAuth) defaultClient.getAuthentication("gatewayToken");
        gatewayToken.setBearerToken("BEARER TOKEN");

        CapabilitiesApi apiInstance = new CapabilitiesApi(defaultClient);
        RerankRequest rerankRequest = new RerankRequest(); // RerankRequest | 
        try {
            ApiResponse<RerankResponse> response = apiInstance.capabilitiesRerankWithHttpInfo(rerankRequest);
            System.out.println("Status code: " + response.getStatusCode());
            System.out.println("Response headers: " + response.getHeaders());
            System.out.println("Response body: " + response.getData());
        } catch (ApiException e) {
            System.err.println("Exception when calling CapabilitiesApi#capabilitiesRerank");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Response headers: " + e.getResponseHeaders());
            System.err.println("Reason: " + e.getResponseBody());
            e.printStackTrace();
        }
    }
}
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **rerankRequest** | [**RerankRequest**](RerankRequest.md)|  | |

### Return type

ApiResponse<[**RerankResponse**](RerankResponse.md)>


### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The documents&#39; indexes, best first. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **404** | No reranker is configured (&#x60;no_provider&#x60;), or the model asked for is not the one served (&#x60;model_not_found&#x60;). |  -  |
| **502** | The provider answered but not in the contract&#39;s shape (&#x60;bad_shape&#x60;) or with an error (&#x60;provider_error&#x60;). |  -  |
| **503** | The provider did not answer (&#x60;provider_unavailable&#x60;) or the budget cannot be met (&#x60;over_budget&#x60;, with &#x60;predictedMs&#x60; and &#x60;budgetMs&#x60;). |  -  |

