# chatpanel.model.AgentsListDefs200Response

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agents** | [**BuiltList&lt;AgentDef&gt;**](AgentDef.md) |  | 
**quarantined** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Definitions the scanner refused. | [optional] 
**problems** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Files that parsed as a definition and could not be made one. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


