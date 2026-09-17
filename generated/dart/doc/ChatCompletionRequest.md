# chatpanel.model.ChatCompletionRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** | A model id from `GET /v1/models`; `claude/opus` names an agent and its model. | 
**messages** | [**BuiltList&lt;ChatMessage&gt;**](ChatMessage.md) |  | 
**stream** | **bool** |  | [optional] 
**streamOptions** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional] 
**tools** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) |  | [optional] 
**toolChoice** | [**JsonObject**](.md) |  | [optional] 
**temperature** | **num** |  | [optional] 
**maxTokens** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


