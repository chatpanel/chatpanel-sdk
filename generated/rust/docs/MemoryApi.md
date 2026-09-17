# \MemoryApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**memory_forget**](MemoryApi.md#memory_forget) | **POST** /v1/memory/forget | Forget memories matching an id or words.
[**memory_list**](MemoryApi.md#memory_list) | **GET** /v1/memory/list | Every memory.
[**memory_recall**](MemoryApi.md#memory_recall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them.
[**memory_remember**](MemoryApi.md#memory_remember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — `source` is recorded.
[**memory_sync**](MemoryApi.md#memory_sync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set.



## memory_forget

> models::MemoryForget200Response memory_forget(memory_forget_request)
Forget memories matching an id or words.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**memory_forget_request** | [**MemoryForgetRequest**](MemoryForgetRequest.md) |  | [required] |

### Return type

[**models::MemoryForget200Response**](memory_forget_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## memory_list

> models::MemoryList memory_list()
Every memory.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::MemoryList**](MemoryList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## memory_recall

> models::RecallResponse memory_recall(recall_request)
The memories relevant to a text, and a prompt block that carries them.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**recall_request** | [**RecallRequest**](RecallRequest.md) |  | [required] |

### Return type

[**models::RecallResponse**](RecallResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## memory_remember

> models::RememberResponse memory_remember(remember_request)
Save a durable fact. Never anonymous — `source` is recorded.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**remember_request** | [**RememberRequest**](RememberRequest.md) |  | [required] |

### Return type

[**models::RememberResponse**](RememberResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## memory_sync

> models::MemorySyncResponse memory_sync(memory_sync_request)
Two-way merge in one round trip — push what you have, receive the full set.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**memory_sync_request** | [**MemorySyncRequest**](MemorySyncRequest.md) |  | [required] |

### Return type

[**models::MemorySyncResponse**](MemorySyncResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

