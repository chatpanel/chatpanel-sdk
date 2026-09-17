# chatpanel.api.ModelsApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modelsList**](ModelsApi.md#modelslist) | **GET** /v1/models | Every model the gateway can route to.


# **modelsList**
> ModelList modelsList()

Every model the gateway can route to.

Describes the routing table, not the disk: a bridge agent is listed whether or not the CLI is installed. From 0.6.64 each agent carries `available`; from 0.6.66 a cloud model carries `configured: false` when a turn is known to fail for something the user can fix. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getModelsApi();

try {
    final response = api.modelsList();
    print(response);
} on DioException catch (e) {
    print('Exception when calling ModelsApi->modelsList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelList**](ModelList.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

