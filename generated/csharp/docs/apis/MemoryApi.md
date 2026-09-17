# ChatPanel.Sdk.Api.MemoryApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**MemoryForget**](MemoryApi.md#memoryforget) | **POST** /v1/memory/forget | Forget memories matching an id or words. |
| [**MemoryList**](MemoryApi.md#memorylist) | **GET** /v1/memory/list | Every memory. |
| [**MemoryRecall**](MemoryApi.md#memoryrecall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them. |
| [**MemoryRemember**](MemoryApi.md#memoryremember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded. |
| [**MemorySync**](MemoryApi.md#memorysync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set. |

<a id="memoryforget"></a>
# **MemoryForget**
> MemoryForget200Response MemoryForget (MemoryForgetRequest memoryForgetRequest)

Forget memories matching an id or words.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **memoryForgetRequest** | [**MemoryForgetRequest**](MemoryForgetRequest.md) |  |  |

### Return type

[**MemoryForget200Response**](MemoryForget200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | How many were removed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="memorylist"></a>
# **MemoryList**
> MemoryList MemoryList ()

Every memory.


### Parameters
This endpoint does not need any parameter.
### Return type

[**MemoryList**](MemoryList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The list. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="memoryrecall"></a>
# **MemoryRecall**
> RecallResponse MemoryRecall (RecallRequest recallRequest)

The memories relevant to a text, and a prompt block that carries them.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **recallRequest** | [**RecallRequest**](RecallRequest.md) |  |  |

### Return type

[**RecallResponse**](RecallResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Relevant memories. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="memoryremember"></a>
# **MemoryRemember**
> RememberResponse MemoryRemember (RememberRequest rememberRequest)

Save a durable fact. Never anonymous — `source` is recorded.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **rememberRequest** | [**RememberRequest**](RememberRequest.md) |  |  |

### Return type

[**RememberResponse**](RememberResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What happened — added, updated, or replaced an older memory. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="memorysync"></a>
# **MemorySync**
> MemorySyncResponse MemorySync (MemorySyncRequest memorySyncRequest)

Two-way merge in one round trip — push what you have, receive the full set.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **memorySyncRequest** | [**MemorySyncRequest**](MemorySyncRequest.md) |  |  |

### Return type

[**MemorySyncResponse**](MemorySyncResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The merged set. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

