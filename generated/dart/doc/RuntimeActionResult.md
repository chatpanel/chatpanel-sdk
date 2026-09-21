# chatpanel.model.RuntimeActionResult

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**error** | **String** |  | [optional] 
**already** | **bool** |  | [optional] 
**url** | **String** |  | [optional] 
**answering** | **bool** |  | [optional] 
**install** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional] 
**provides** | **BuiltList&lt;String&gt;** | The capabilities the service now stands behind (gateway 0.20+). | [optional] 
**model** | **String** | The model the container runs, on a start or a model pick (gateway 0.22+). | [optional] 
**restarted** | **bool** | A model pick re-created a running container. | [optional] 
**note** | **String** | A model pick that fits but is tight for the engine's memory. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


