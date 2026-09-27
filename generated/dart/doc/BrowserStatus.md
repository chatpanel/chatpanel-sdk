# chatpanel.model.BrowserStatus

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connected** | **bool** |  | 
**pending** | **int** | Calls waiting on the browser. | 
**waiting** | **bool** | A browser holds the stream but has not announced yet. | [optional] 
**browser** | [**BrowserInfo**](BrowserInfo.md) |  | [optional] 
**extension_** | **String** | The extension's version. | [optional] 
**spec** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | The page tool: { name, description, parameters } — hand it to a model as it is. | [optional] 
**system** | **String** | The guidance that goes with the tool. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


