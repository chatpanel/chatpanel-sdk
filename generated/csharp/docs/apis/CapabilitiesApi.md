# ChatPanel.Sdk.Api.CapabilitiesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CapabilitiesDetect**](CapabilitiesApi.md#capabilitiesdetect) | **POST** /v1/detect | Find entities in text — the model&#39;s own labels, with offsets and scores. |
| [**CapabilitiesList**](CapabilitiesApi.md#capabilitieslist) | **GET** /v1/capabilities | What this provider can do — which capabilities, models, measured cost and runtime state. |

<a id="capabilitiesdetect"></a>
# **CapabilitiesDetect**
> DetectResponse CapabilitiesDetect (DetectRequest detectRequest)

Find entities in text — the model's own labels, with offsets and scores.

The standard `detect` signature over the in-process entity detector. Labels are the model's own (`private_person`, `PER`, `GIVENNAME`…) — the client maps them; the vocabulary is listed by `GET /v1/capabilities`. `budgetMs` is refused (503 `over_budget`) from the provider's own latency record before the model runs, never missed. An engine that is still loading answers 503 `detector_unready`; an empty `entities` on 200 means the model found nothing. Raw text reaches the model here and nowhere else — this route is loopback-only like the rest of the gateway. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **detectRequest** | [**DetectRequest**](DetectRequest.md) |  |  |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="capabilitieslist"></a>
# **CapabilitiesList**
> CapabilitiesDocument CapabilitiesList ()

What this provider can do — which capabilities, models, measured cost and runtime state.

The discovery document a client chooses a provider from: one entry per capability (`detect`, `stt`, `tts` today; `decide`, `rerank`, `embed` as they land), each at its standard route, with the models it can serve, the loaded model's own label vocabulary (`detect`), the measured latency record, and the runtime's state. Never loads a model. 


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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

