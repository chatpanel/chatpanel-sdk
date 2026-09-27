# ChatPanel.Sdk.Api.BrowserApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**BrowserAnnounce**](BrowserApi.md#browserannounce) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance. |
| [**BrowserCall**](BrowserApi.md#browsercall) | **POST** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result. |
| [**BrowserResult**](BrowserApi.md#browserresult) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it. |
| [**BrowserStatus**](BrowserApi.md#browserstatus) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers. |
| [**BrowserStream**](BrowserApi.md#browserstream) | **GET** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run. |

<a id="browserannounce"></a>
# **BrowserAnnounce**
> BrowserAnnounce200Response BrowserAnnounce (BrowserAnnounce browserAnnounce)

The browser says what it offers — its page tool spec and guidance.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **browserAnnounce** | [**BrowserAnnounce**](BrowserAnnounce.md) |  |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Accepted. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="browsercall"></a>
# **BrowserCall**
> BrowserCallResult BrowserCall (BrowserCall browserCall)

Run one page action in the person's browser and wait for its result.

Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **browserCall** | [**BrowserCall**](BrowserCall.md) |  |  |

### Return type

[**BrowserCallResult**](BrowserCallResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | What the page action returned. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **409** | An error, in the gateway&#39;s words. |  -  |
| **504** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="browserresult"></a>
# **BrowserResult**
> BrowserAnnounce200Response BrowserResult (BrowserResult browserResult)

The browser answers a call it ran. Only the session the call went to may answer it.


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **browserResult** | [**BrowserResult**](BrowserResult.md) |  |  |

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Accepted. |  -  |
| **400** | An error, in the gateway&#39;s words. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |
| **404** | An error, in the gateway&#39;s words. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="browserstatus"></a>
# **BrowserStatus**
> BrowserStatus BrowserStatus ()

Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension's own — a client hands them to its model as they are.


### Parameters
This endpoint does not need any parameter.
### Return type

[**BrowserStatus**](BrowserStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The connected browser, or &#x60;connected false&#x60;. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="browserstream"></a>
# **BrowserStream**
> string BrowserStream ()

The browser's end — `hello` with its session, then a `call` frame per action to run.


### Parameters
This endpoint does not need any parameter.
### Return type

**string**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream, application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | &#x60;event: hello&#x60; &#x60;{ session, version }&#x60;, then &#x60;event: call&#x60; &#x60;{ id, action, args, task }&#x60;, &#x60;event: cancel&#x60; &#x60;{ id }&#x60; when a call timed out, &#x60;event: replaced&#x60; when a newer browser connected; a comment ping every 25 s. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

