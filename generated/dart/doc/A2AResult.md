# chatpanel.model.A2AResult

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | [optional] 
**kind** | **String** | A2A returns one or the other; an agent answering at once creates no task. | [optional] 
**task** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**message** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**text** | **String** | The answer as text — artifacts first, then what the agent actually said. | [optional] 
**done** | **bool** |  | [optional] 
**needs** | **String** | `answer` for TASK_STATE_INPUT_REQUIRED, `approval` for TASK_STATE_AUTH_REQUIRED, null otherwise. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


