# ChatPanel.Sdk.Api.PrefsApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**PrefsDelete**](PrefsApi.md#prefsdelete) | **DELETE** /v1/prefs | Remove one section. |
| [**PrefsEvents**](PrefsApi.md#prefsevents) | **GET** /v1/prefs/events | Live — which sections another client wrote. |
| [**PrefsGet**](PrefsApi.md#prefsget) | **GET** /v1/prefs | The shared sections, or only their stamps. |
| [**PrefsPut**](PrefsApi.md#prefsput) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp. |

<a id="prefsdelete"></a>
# **PrefsDelete**
> PrefsDelete200Response PrefsDelete (string section)

Remove one section.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **section** | **string** |  |  |

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Whether it existed. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="prefsevents"></a>
# **PrefsEvents**
> string PrefsEvents ()

Live — which sections another client wrote.


### Parameters
This endpoint does not need any parameter.
### Return type

**string**

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;{ type: hello, revision, stamps }&#x60; first, then &#x60;{ type: changed, ... }&#x60;. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="prefsget"></a>
# **PrefsGet**
> Prefs PrefsGet (string section = null, bool stamps = null)

The shared sections, or only their stamps.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **section** | **string** |  | [optional]  |
| **stamps** | **bool** | Only &#x60;{ revision, stamps }&#x60;. | [optional]  |

### Return type

[**Prefs**](Prefs.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The sections. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="prefsput"></a>
# **PrefsPut**
> PrefsWriteResult PrefsPut (PrefsWrite prefsWrite)

Write sections; per-section last-writer-wins by stamp.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **prefsWrite** | [**PrefsWrite**](PrefsWrite.md) |  |  |

### Return type

[**PrefsWriteResult**](PrefsWriteResult.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Which sections were applied and which were kept (newer on the gateway). |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

