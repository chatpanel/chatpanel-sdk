# \PrefsApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**prefs_delete**](PrefsApi.md#prefs_delete) | **DELETE** /v1/prefs | Remove one section.
[**prefs_events**](PrefsApi.md#prefs_events) | **GET** /v1/prefs/events | Live — which sections another client wrote.
[**prefs_get**](PrefsApi.md#prefs_get) | **GET** /v1/prefs | The shared sections, or only their stamps.
[**prefs_put**](PrefsApi.md#prefs_put) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp.



## prefs_delete

> models::PrefsDelete200Response prefs_delete(section)
Remove one section.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**section** | **String** |  | [required] |

### Return type

[**models::PrefsDelete200Response**](prefs_delete_200_response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## prefs_events

> String prefs_events()
Live — which sections another client wrote.

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


## prefs_get

> models::Prefs prefs_get(section, stamps)
The shared sections, or only their stamps.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**section** | Option<**String**> |  |  |
**stamps** | Option<**bool**> | Only `{ revision, stamps }`. |  |

### Return type

[**models::Prefs**](Prefs.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## prefs_put

> models::PrefsWriteResult prefs_put(prefs_write)
Write sections; per-section last-writer-wins by stamp.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**prefs_write** | [**PrefsWrite**](PrefsWrite.md) |  | [required] |

### Return type

[**models::PrefsWriteResult**](PrefsWriteResult.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

