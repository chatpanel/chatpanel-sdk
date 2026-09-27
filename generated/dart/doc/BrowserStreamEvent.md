# chatpanel.model.BrowserStreamEvent

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event** | **String** |  | 
**session** | **String** | On `hello`. | [optional] 
**version** | **String** | On `hello` — the gateway's. | [optional] 
**id** | **String** | On `call` and `cancel`. | [optional] 
**action** | **String** |  | [optional] 
**args** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**task** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


