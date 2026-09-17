# chatpanel.api.PrefsApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**prefsDelete**](PrefsApi.md#prefsdelete) | **DELETE** /v1/prefs | Remove one section.
[**prefsEvents**](PrefsApi.md#prefsevents) | **GET** /v1/prefs/events | Live — which sections another client wrote.
[**prefsGet**](PrefsApi.md#prefsget) | **GET** /v1/prefs | The shared sections, or only their stamps.
[**prefsPut**](PrefsApi.md#prefsput) | **POST** /v1/prefs | Write sections; per-section last-writer-wins by stamp.


# **prefsDelete**
> PrefsDelete200Response prefsDelete(section)

Remove one section.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getPrefsApi();
final String section = section_example; // String | 

try {
    final response = api.prefsDelete(section);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PrefsApi->prefsDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **String**|  | 

### Return type

[**PrefsDelete200Response**](PrefsDelete200Response.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefsEvents**
> String prefsEvents()

Live — which sections another client wrote.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getPrefsApi();

try {
    final response = api.prefsEvents();
    print(response);
} on DioException catch (e) {
    print('Exception when calling PrefsApi->prefsEvents: $e\n');
}
```

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

# **prefsGet**
> Prefs prefsGet(section, stamps)

The shared sections, or only their stamps.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getPrefsApi();
final String section = section_example; // String | 
final bool stamps = true; // bool | Only `{ revision, stamps }`.

try {
    final response = api.prefsGet(section, stamps);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PrefsApi->prefsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **String**|  | [optional] 
 **stamps** | **bool**| Only `{ revision, stamps }`. | [optional] 

### Return type

[**Prefs**](Prefs.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prefsPut**
> PrefsWriteResult prefsPut(prefsWrite)

Write sections; per-section last-writer-wins by stamp.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getPrefsApi();
final PrefsWrite prefsWrite = ; // PrefsWrite | 

try {
    final response = api.prefsPut(prefsWrite);
    print(response);
} on DioException catch (e) {
    print('Exception when calling PrefsApi->prefsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prefsWrite** | [**PrefsWrite**](PrefsWrite.md)|  | 

### Return type

[**PrefsWriteResult**](PrefsWriteResult.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

