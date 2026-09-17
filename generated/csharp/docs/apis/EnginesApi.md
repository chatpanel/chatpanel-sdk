# ChatPanel.Sdk.Api.EnginesApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**EnginesAppendEntry**](EnginesApi.md#enginesappendentry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine. |
| [**EnginesCard**](EnginesApi.md#enginescard) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries. |
| [**EnginesList**](EnginesApi.md#engineslist) | **GET** /v1/engines | Every engine&#39;s card. |

<a id="enginesappendentry"></a>
# **EnginesAppendEntry**
> Dictionary&lt;string, Object&gt; EnginesAppendEntry (string engineKey, Dictionary<string, Object> requestBody)

Append a ledger entry for an engine.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **engineKey** | **string** |  |  |
| **requestBody** | [**Dictionary&lt;string, Object&gt;**](Object.md) |  |  |

### Return type

**Dictionary<string, Object>**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The entry. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="enginescard"></a>
# **EnginesCard**
> Dictionary&lt;string, Object&gt; EnginesCard (string engineKey, bool entries = null, int minCalls = null)

One engine's card, optionally with entries.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **engineKey** | **string** |  |  |
| **entries** | **bool** |  | [optional]  |
| **minCalls** | **int** |  | [optional]  |

### Return type

**Dictionary<string, Object>**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The card. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="engineslist"></a>
# **EnginesList**
> EnginesList200Response EnginesList (int minCalls = null)

Every engine's card.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **minCalls** | **int** |  | [optional]  |

### Return type

[**EnginesList200Response**](EnginesList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Engines. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

