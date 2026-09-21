# chatpanel.model.CloudEvent

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**specversion** | **String** |  | 
**id** | **String** |  | 
**source_** | **String** | `urn:chatpanel:host:<host>` | 
**type** | **String** | `net.chatpanel.<family>.<kind>` | 
**time** | [**DateTime**](DateTime.md) |  | 
**datacontenttype** | **String** |  | [optional] 
**seq** | **int** |  | 
**host** | **String** |  | 
**causes** | **String** |  | [optional] 
**chatpanelv** | **int** |  | 
**data** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


