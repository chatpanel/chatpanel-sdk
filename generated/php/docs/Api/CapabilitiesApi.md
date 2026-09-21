# ChatPanelSdk\CapabilitiesApi

The small non-generative models this gateway provides — discovery, and one standard signature per capability (docs/capability-endpoints.md).

All URIs are relative to http://127.0.0.1:4320, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**capabilitiesDecide()**](CapabilitiesApi.md#capabilitiesDecide) | **POST** /v1/decide | Typed decisions over a text — a choice, a score or a yes/no, each with a probability. |
| [**capabilitiesDetect()**](CapabilitiesApi.md#capabilitiesDetect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores. |
| [**capabilitiesList()**](CapabilitiesApi.md#capabilitiesList) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state. |
| [**capabilitiesRerank()**](CapabilitiesApi.md#capabilitiesRerank) | **POST** /v1/rerank | Order documents by relevance to a query — a cross-encoder, no language model. |


## `capabilitiesDecide()`

```php
capabilitiesDecide($decide_request): \ChatPanelSdk\Model\DecideResponse
```

Typed decisions over a text — a choice, a score or a yes/no, each with a probability.

ChatPanel's `decide` signature (docs/capability-endpoints.md §4.2): `state` is the text judged, `questions` are keyed by identifier — a `choice` picks one of its `options`, a `score` places the state on `options` read as an ordered rubric, a `noul` is yes/no. Served BY PROXY through the adapter the config names: the `opendecision` container started under Settings › Runtime (TypeSafe's `/v1/systemone` shape, loopback-only), or a server `capabilities.decide` names (a Jev endpoint with a token, another gateway). `calibrated` in the response says whether `p` may be read as a probability — an NLI concentration (OpenDecision) is not one. Errors as `/v1/rerank`.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\CapabilitiesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$decide_request = new \ChatPanelSdk\Model\DecideRequest(); // \ChatPanelSdk\Model\DecideRequest

try {
    $result = $apiInstance->capabilitiesDecide($decide_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CapabilitiesApi->capabilitiesDecide: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **decide_request** | [**\ChatPanelSdk\Model\DecideRequest**](../Model/DecideRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\DecideResponse**](../Model/DecideResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `capabilitiesDetect()`

```php
capabilitiesDetect($detect_request): \ChatPanelSdk\Model\DetectResponse
```

Find entities in text — the model's own labels, with offsets and scores.

The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\CapabilitiesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$detect_request = new \ChatPanelSdk\Model\DetectRequest(); // \ChatPanelSdk\Model\DetectRequest

try {
    $result = $apiInstance->capabilitiesDetect($detect_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CapabilitiesApi->capabilitiesDetect: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **detect_request** | [**\ChatPanelSdk\Model\DetectRequest**](../Model/DetectRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\DetectResponse**](../Model/DetectResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `capabilitiesList()`

```php
capabilitiesList(): \ChatPanelSdk\Model\CapabilitiesDocument
```

What this provider can do — which capabilities, models, measured cost and runtime state.

The discovery document a client chooses a provider from: one entry per capability (`detect`, `stt`, `tts` today; `decide`, `rerank`, `embed` as they land), each at its standard route, with the models it can serve, the loaded model's own label vocabulary (`detect`), the measured latency record, and the runtime's state. Never loads a model.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\CapabilitiesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->capabilitiesList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CapabilitiesApi->capabilitiesList: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\ChatPanelSdk\Model\CapabilitiesDocument**](../Model/CapabilitiesDocument.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `capabilitiesRerank()`

```php
capabilitiesRerank($rerank_request): \ChatPanelSdk\Model\RerankResponse
```

Order documents by relevance to a query — a cross-encoder, no language model.

The Cohere / Jina rerank shape, served BY PROXY: the gateway forwards to the reranker it is pointed at — the `reranker` container started under Settings › Runtime (Text Embeddings Inference with `BAAI/bge-reranker-v2-m3`, loopback-only), or the server `capabilities.rerank` names — through the adapter that speaks its wire, and validates the answer against the contract before it leaves (a wrong shape is 502 `bad_shape`, never a bad order). `budgetMs` is refused (503 `over_budget`) from the gateway's own latency record before dialling. 404 `no_provider` until a provider is configured; 503 `provider_unavailable` when it does not answer. `GET /v1/capabilities` lists it only while configured.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: gatewayToken
$config = ChatPanelSdk\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new ChatPanelSdk\Api\CapabilitiesApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$rerank_request = new \ChatPanelSdk\Model\RerankRequest(); // \ChatPanelSdk\Model\RerankRequest

try {
    $result = $apiInstance->capabilitiesRerank($rerank_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CapabilitiesApi->capabilitiesRerank: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **rerank_request** | [**\ChatPanelSdk\Model\RerankRequest**](../Model/RerankRequest.md)|  | |

### Return type

[**\ChatPanelSdk\Model\RerankResponse**](../Model/RerankResponse.md)

### Authorization

[gatewayToken](../../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
