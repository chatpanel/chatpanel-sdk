# chatpanel.model.A2ASendRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** |  | [optional] 
**card** | [**AgentCard**](AgentCard.md) |  | [optional] 
**text** | **String** | Shorthand for a one-part text message. | [optional] 
**message** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A full A2A Message. | [optional] 
**contextId** | **String** | Groups related interactions. | [optional] 
**taskId** | **String** | Continues an existing task — how an input or auth stop is answered. | [optional] 
**returnImmediately** | **bool** | Do not wait for a terminal or interrupted state. | [optional] 
**auth** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


