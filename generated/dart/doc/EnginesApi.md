# chatpanel.api.EnginesApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enginesAppendEntry**](EnginesApi.md#enginesappendentry) | **POST** /v1/engines/{engineKey}/entries | Append a ledger entry for an engine.
[**enginesCard**](EnginesApi.md#enginescard) | **GET** /v1/engines/{engineKey}/card | One engine&#39;s card, optionally with entries.
[**enginesList**](EnginesApi.md#engineslist) | **GET** /v1/engines | Every engine&#39;s card.


# **enginesAppendEntry**
> BuiltMap<String, JsonObject> enginesAppendEntry(engineKey, requestBody)

Append a ledger entry for an engine.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getEnginesApi();
final String engineKey = engineKey_example; // String | 
final BuiltMap<String, JsonObject> requestBody = Object; // BuiltMap<String, JsonObject> | 

try {
    final response = api.enginesAppendEntry(engineKey, requestBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EnginesApi->enginesAppendEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineKey** | **String**|  | 
 **requestBody** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)|  | 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enginesCard**
> BuiltMap<String, JsonObject> enginesCard(engineKey, entries, minCalls)

One engine's card, optionally with entries.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getEnginesApi();
final String engineKey = engineKey_example; // String | 
final bool entries = true; // bool | 
final int minCalls = 56; // int | 

try {
    final response = api.enginesCard(engineKey, entries, minCalls);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EnginesApi->enginesCard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **engineKey** | **String**|  | 
 **entries** | **bool**|  | [optional] 
 **minCalls** | **int**|  | [optional] 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enginesList**
> EnginesList200Response enginesList(minCalls)

Every engine's card.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getEnginesApi();
final int minCalls = 56; // int | 

try {
    final response = api.enginesList(minCalls);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EnginesApi->enginesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minCalls** | **int**|  | [optional] 

### Return type

[**EnginesList200Response**](EnginesList200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

