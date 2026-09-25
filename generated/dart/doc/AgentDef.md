# chatpanel.model.AgentDef

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | [optional] 
**purpose** | **String** |  | [optional] 
**dialect** | **String** |  | [optional] 
**source_** | **String** | The folder it was read from: chatpanel, claude, codex, agents-dir, external. | [optional] 
**label** | **String** |  | [optional] 
**path** | **String** | Relative to the root it was found in. | [optional] 
**writable** | **bool** |  | [optional] 
**engine** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**grants** | **BuiltList&lt;String&gt;** |  | [optional] 
**skills** | **BuiltList&lt;String&gt;** |  | [optional] 
**promptChars** | **int** |  | [optional] 
**prompt** | **String** | Only on `GET /agent-defs/{agentId}`. | [optional] 
**warnings** | **BuiltList&lt;String&gt;** | What the dialect could not map — an unmapped tool is reported, never widened into a grant. | [optional] 
**scanned** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


