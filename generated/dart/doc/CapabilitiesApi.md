# chatpanel.api.CapabilitiesApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**capabilitiesDecide**](CapabilitiesApi.md#capabilitiesdecide) | **POST** /v1/decide | Typed decisions over a text — a choice, a score or a yes/no, each with a probability.
[**capabilitiesDetect**](CapabilitiesApi.md#capabilitiesdetect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores.
[**capabilitiesList**](CapabilitiesApi.md#capabilitieslist) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state.
[**capabilitiesRerank**](CapabilitiesApi.md#capabilitiesrerank) | **POST** /v1/rerank | Order documents by relevance to a query — a cross-encoder, no language model.


# **capabilitiesDecide**
> DecideResponse capabilitiesDecide(decideRequest)

Typed decisions over a text — a choice, a score or a yes/no, each with a probability.

ChatPanel's `decide` signature (docs/capability-endpoints.md §4.2): `state` is the text judged, `questions` are keyed by identifier — a `choice` picks one of its `options`, a `score` places the state on `options` read as an ordered rubric, a `noul` is yes/no. Served BY PROXY through the adapter the config names: the `opendecision` container started under Settings › Runtime (TypeSafe's `/v1/systemone` shape, loopback-only), or a server `capabilities.decide` names (a Jev endpoint with a token, another gateway). `calibrated` in the response says whether `p` may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as `/v1/rerank`. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getCapabilitiesApi();
final DecideRequest decideRequest = ; // DecideRequest | 

try {
    final response = api.capabilitiesDecide(decideRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CapabilitiesApi->capabilitiesDecide: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **decideRequest** | [**DecideRequest**](DecideRequest.md)|  | 

### Return type

[**DecideResponse**](DecideResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **capabilitiesDetect**
> DetectResponse capabilitiesDetect(detectRequest)

Find entities in text — the model's own labels, with offsets and scores.

The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getCapabilitiesApi();
final DetectRequest detectRequest = ; // DetectRequest | 

try {
    final response = api.capabilitiesDetect(detectRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CapabilitiesApi->capabilitiesDetect: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **detectRequest** | [**DetectRequest**](DetectRequest.md)|  | 

### Return type

[**DetectResponse**](DetectResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **capabilitiesList**
> CapabilitiesDocument capabilitiesList()

What this provider can do — which capabilities, models, measured cost and runtime state.

The discovery document a client chooses a provider from: one entry per capability (`detect`, `stt`, `tts` today; `decide`, `rerank`, `embed` as they land), each at its standard route, with the models it can serve, the loaded model's own label vocabulary (`detect`), the measured latency record, and the runtime's state. Never loads a model. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getCapabilitiesApi();

try {
    final response = api.capabilitiesList();
    print(response);
} on DioException catch (e) {
    print('Exception when calling CapabilitiesApi->capabilitiesList: $e\n');
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

# **capabilitiesRerank**
> RerankResponse capabilitiesRerank(rerankRequest)

Order documents by relevance to a query — a cross-encoder, no language model.

The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the `reranker` container started under Settings › Runtime (Text Embeddings Inference with `BAAI/bge-reranker-v2-m3`, loopback-only), or the server `capabilities.rerank` names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 `bad_shape`, never a bad order). `budgetMs` is refused (503 `over_budget`) from the gateway's own latency record before dialling. 404 `no_provider` until a provider is configured; 503 `provider_unavailable` when it does not answer. `GET /v1/capabilities` lists it only while configured. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getCapabilitiesApi();
final RerankRequest rerankRequest = ; // RerankRequest | 

try {
    final response = api.capabilitiesRerank(rerankRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CapabilitiesApi->capabilitiesRerank: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rerankRequest** | [**RerankRequest**](RerankRequest.md)|  | 

### Return type

[**RerankResponse**](RerankResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

