# chatpanel.api.BrowserApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**browserAnnounce**](BrowserApi.md#browserannounce) | **POST** /v1/browser/announce | The browser says what it offers — its page tool spec and guidance.
[**browserCall**](BrowserApi.md#browsercall) | **POST** /v1/browser/call | Run one page action in the person&#39;s browser and wait for its result.
[**browserResult**](BrowserApi.md#browserresult) | **POST** /v1/browser/result | The browser answers a call it ran. Only the session the call went to may answer it.
[**browserStatus**](BrowserApi.md#browserstatus) | **GET** /v1/browser | Is a browser connected, which one, and the page tool it offers.
[**browserStream**](BrowserApi.md#browserstream) | **GET** /v1/browser/stream | The browser&#39;s end — &#x60;hello&#x60; with its session, then a &#x60;call&#x60; frame per action to run.


# **browserAnnounce**
> BrowserAnnounce200Response browserAnnounce(browserAnnounce)

The browser says what it offers — its page tool spec and guidance.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getBrowserApi();
final BrowserAnnounce browserAnnounce = ; // BrowserAnnounce | 

try {
    final response = api.browserAnnounce(browserAnnounce);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrowserApi->browserAnnounce: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **browserAnnounce** | [**BrowserAnnounce**](BrowserAnnounce.md)|  | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browserCall**
> BrowserCallResult browserCall(browserCall)

Run one page action in the person's browser and wait for its result.

Carried to the connected browser, which runs it on the task's own tab through the same guards as its own page actions — the first call of a panel session asks the person, and anything that submits, pays or books is confirmed by them. Waits up to `timeoutMs` (default 120 s) because a confirmation is a person deciding. 

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getBrowserApi();
final BrowserCall browserCall = ; // BrowserCall | 

try {
    final response = api.browserCall(browserCall);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrowserApi->browserCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **browserCall** | [**BrowserCall**](BrowserCall.md)|  | 

### Return type

[**BrowserCallResult**](BrowserCallResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browserResult**
> BrowserAnnounce200Response browserResult(browserResult)

The browser answers a call it ran. Only the session the call went to may answer it.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getBrowserApi();
final BrowserResult browserResult = ; // BrowserResult | 

try {
    final response = api.browserResult(browserResult);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrowserApi->browserResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **browserResult** | [**BrowserResult**](BrowserResult.md)|  | 

### Return type

[**BrowserAnnounce200Response**](BrowserAnnounce200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browserStatus**
> BrowserStatus browserStatus()

Is a browser connected, which one, and the page tool it offers.

The spec and guidance are the extension's own — a client hands them to its model as they are.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getBrowserApi();

try {
    final response = api.browserStatus();
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrowserApi->browserStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BrowserStatus**](BrowserStatus.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **browserStream**
> String browserStream()

The browser's end — `hello` with its session, then a `call` frame per action to run.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getBrowserApi();

try {
    final response = api.browserStream();
    print(response);
} on DioException catch (e) {
    print('Exception when calling BrowserApi->browserStream: $e\n');
}
```

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

