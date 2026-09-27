# \BrowserApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**browser_announce**](BrowserApi.md#browser_announce) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance.
[**browser_call**](BrowserApi.md#browser_call) | **POST** /v1/browser/call | Run one page action in the person's browser and wait for its result.
[**browser_result**](BrowserApi.md#browser_result) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it.
[**browser_status**](BrowserApi.md#browser_status) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers.
[**browser_stream**](BrowserApi.md#browser_stream) | **GET** /v1/browser/stream | The browser's end — `hello` with its session, then a `call` frame per action to run.



## browser_announce

> models::BrowserAnnounce200Response browser_announce(browser_announce)
The browser says what it offers — its page tool spec and guidance.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**browser_announce** | [**BrowserAnnounce**](BrowserAnnounce.md) |  | [required] |

### Return type

[**models::BrowserAnnounce200Response**](browser_announce_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## browser_call

> models::BrowserCallResult browser_call(browser_call)
Run one page action in the person's browser and wait for its result.

Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**browser_call** | [**BrowserCall**](BrowserCall.md) |  | [required] |

### Return type

[**models::BrowserCallResult**](BrowserCallResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## browser_result

> models::BrowserAnnounce200Response browser_result(browser_result)
The browser answers a call it ran. Only the session the call went to may answer it.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**browser_result** | [**BrowserResult**](BrowserResult.md) |  | [required] |

### Return type

[**models::BrowserAnnounce200Response**](browser_announce_200_response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## browser_status

> models::BrowserStatus browser_status()
Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension's own — a client hands them to its model as they are.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::BrowserStatus**](BrowserStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## browser_stream

> String browser_stream()
The browser's end — `hello` with its session, then a `call` frame per action to run.

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

