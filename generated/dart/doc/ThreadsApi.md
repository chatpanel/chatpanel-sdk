# chatpanel.api.ThreadsApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**threadsSend**](ThreadsApi.md#threadssend) | **POST** /v1/threads/send | Ask one of the person&#39;s chats and get its answer; the exchange is added to that chat.


# **threadsSend**
> ThreadsSend200Response threadsSend(threadsSendRequest)

Ask one of the person's chats and get its answer; the exchange is added to that chat.

The chat's own model or coding agent answers, in that chat (its agent session is resumed), and the question — framed with who asked — and the answer are appended to it. A caller acting for an agent should ask the person first; `dryRun` returns the chat's title and model for that question without running anything.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getThreadsApi();
final ThreadsSendRequest threadsSendRequest = ; // ThreadsSendRequest | 

try {
    final response = api.threadsSend(threadsSendRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ThreadsApi->threadsSend: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadsSendRequest** | [**ThreadsSendRequest**](ThreadsSendRequest.md)|  | 

### Return type

[**ThreadsSend200Response**](ThreadsSend200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

