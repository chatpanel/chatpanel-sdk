# chatpanel.api.RedactionApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**redactionPreview**](RedactionApi.md#redactionpreview) | **POST** /redact | What the model would receive if this text were sent now.


# **redactionPreview**
> RedactionPreview redactionPreview(redactionPreviewRequest)

What the model would receive if this text were sent now.

Runs the same redaction path as a real turn. The reply carries placeholder types, never the real values.

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getRedactionApi();
final RedactionPreviewRequest redactionPreviewRequest = ; // RedactionPreviewRequest | 

try {
    final response = api.redactionPreview(redactionPreviewRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RedactionApi->redactionPreview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redactionPreviewRequest** | [**RedactionPreviewRequest**](RedactionPreviewRequest.md)|  | 

### Return type

[**RedactionPreview**](RedactionPreview.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

