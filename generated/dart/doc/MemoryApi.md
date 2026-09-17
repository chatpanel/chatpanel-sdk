# chatpanel.api.MemoryApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**memoryForget**](MemoryApi.md#memoryforget) | **POST** /v1/memory/forget | Forget memories matching an id or words.
[**memoryList**](MemoryApi.md#memorylist) | **GET** /v1/memory/list | Every memory.
[**memoryRecall**](MemoryApi.md#memoryrecall) | **POST** /v1/memory/recall | The memories relevant to a text, and a prompt block that carries them.
[**memoryRemember**](MemoryApi.md#memoryremember) | **POST** /v1/memory/remember | Save a durable fact. Never anonymous — &#x60;source&#x60; is recorded.
[**memorySync**](MemoryApi.md#memorysync) | **POST** /v1/memory/sync | Two-way merge in one round trip — push what you have, receive the full set.


# **memoryForget**
> MemoryForget200Response memoryForget(memoryForgetRequest)

Forget memories matching an id or words.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getMemoryApi();
final MemoryForgetRequest memoryForgetRequest = ; // MemoryForgetRequest | 

try {
    final response = api.memoryForget(memoryForgetRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MemoryApi->memoryForget: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memoryForgetRequest** | [**MemoryForgetRequest**](MemoryForgetRequest.md)|  | 

### Return type

[**MemoryForget200Response**](MemoryForget200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **memoryList**
> MemoryList memoryList()

Every memory.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getMemoryApi();

try {
    final response = api.memoryList();
    print(response);
} on DioException catch (e) {
    print('Exception when calling MemoryApi->memoryList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MemoryList**](MemoryList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **memoryRecall**
> RecallResponse memoryRecall(recallRequest)

The memories relevant to a text, and a prompt block that carries them.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getMemoryApi();
final RecallRequest recallRequest = ; // RecallRequest | 

try {
    final response = api.memoryRecall(recallRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MemoryApi->memoryRecall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recallRequest** | [**RecallRequest**](RecallRequest.md)|  | 

### Return type

[**RecallResponse**](RecallResponse.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **memoryRemember**
> RememberResponse memoryRemember(rememberRequest)

Save a durable fact. Never anonymous — `source` is recorded.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getMemoryApi();
final RememberRequest rememberRequest = ; // RememberRequest | 

try {
    final response = api.memoryRemember(rememberRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MemoryApi->memoryRemember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rememberRequest** | [**RememberRequest**](RememberRequest.md)|  | 

### Return type

[**RememberResponse**](RememberResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **memorySync**
> MemorySyncResponse memorySync(memorySyncRequest)

Two-way merge in one round trip — push what you have, receive the full set.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getMemoryApi();
final MemorySyncRequest memorySyncRequest = ; // MemorySyncRequest | 

try {
    final response = api.memorySync(memorySyncRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MemoryApi->memorySync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **memorySyncRequest** | [**MemorySyncRequest**](MemorySyncRequest.md)|  | 

### Return type

[**MemorySyncResponse**](MemorySyncResponse.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

