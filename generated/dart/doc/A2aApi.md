# chatpanel.api.A2aApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**a2aAgents**](A2aApi.md#a2aagents) | **GET** /a2a/agents | Every remote agent this gateway has spoken to.
[**a2aCard**](A2aApi.md#a2acard) | **POST** /a2a/card | Fetch a remote agent&#39;s card, revalidating the one already held.
[**a2aMessage**](A2aApi.md#a2amessage) | **POST** /a2a/message | Send a message to a remote agent and wait for the answer.
[**a2aStream**](A2aApi.md#a2astream) | **POST** /a2a/message/stream | Send a message and stream the answer as it is produced.
[**a2aTask**](A2aApi.md#a2atask) | **POST** /a2a/task | Poll or cancel a task on a remote agent.


# **a2aAgents**
> A2aAgents200Response a2aAgents()

Every remote agent this gateway has spoken to.

What the audit lists — an agent a person connected is a host this machine talks to.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getA2aApi();

try {
    final response = api.a2aAgents();
    print(response);
} on DioException catch (e) {
    print('Exception when calling A2aApi->a2aAgents: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**A2aAgents200Response**](A2aAgents200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **a2aCard**
> A2aCard200Response a2aCard(a2aCardRequest)

Fetch a remote agent's card, revalidating the one already held.

The gateway is the only component allowed to reach a remote agent: every outbound host goes through its SSRF guard, and a card names the endpoints this machine will then talk to. Cached per §8.6 — an ETag is revalidated with `If-None-Match`, so `fresh: false` means the peer answered 304 and the card is unchanged. Plain HTTP is refused for a remote host; loopback is not.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getA2aApi();
final A2aCardRequest a2aCardRequest = ; // A2aCardRequest | 

try {
    final response = api.a2aCard(a2aCardRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling A2aApi->a2aCard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2aCardRequest** | [**A2aCardRequest**](A2aCardRequest.md)|  | 

### Return type

[**A2aCard200Response**](A2aCard200Response.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **a2aMessage**
> A2AResult a2aMessage(a2ASendRequest)

Send a message to a remote agent and wait for the answer.

The reply is a TASK or a MESSAGE — an agent that can answer at once returns a message and no task is ever created, so `kind` says which. `text` and `needs` are derived here rather than by each caller: `needs` is `answer` for an input stop and `approval` for an authorization one, and telling a caller to send a message when approval is wanted is how a task sits forever with both ends waiting.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getA2aApi();
final A2ASendRequest a2ASendRequest = ; // A2ASendRequest | 

try {
    final response = api.a2aMessage(a2ASendRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling A2aApi->a2aMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md)|  | 

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **a2aStream**
> String a2aStream(a2ASendRequest)

Send a message and stream the answer as it is produced.

Server-sent events, one per protocol frame — `task`, `status`, `artifact`, `message`, then `done` with the final result (or `error`). Each event carries the task as it stands, so a chunked artifact arrives whole rather than as fragments the caller must reassemble. Requires the agent to advertise `capabilities.streaming`.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getA2aApi();
final A2ASendRequest a2ASendRequest = ; // A2ASendRequest | 

try {
    final response = api.a2aStream(a2ASendRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling A2aApi->a2aStream: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2ASendRequest** | [**A2ASendRequest**](A2ASendRequest.md)|  | 

### Return type

**String**

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/event-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **a2aTask**
> A2AResult a2aTask(a2aTaskRequest)

Poll or cancel a task on a remote agent.

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getA2aApi();
final A2aTaskRequest a2aTaskRequest = ; // A2aTaskRequest | 

try {
    final response = api.a2aTask(a2aTaskRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling A2aApi->a2aTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a2aTaskRequest** | [**A2aTaskRequest**](A2aTaskRequest.md)|  | 

### Return type

[**A2AResult**](A2AResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

