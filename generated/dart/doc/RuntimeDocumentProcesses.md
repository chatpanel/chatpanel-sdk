# chatpanel.model.RuntimeDocumentProcesses

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | every process running for the user — the bridge's (kind agent | warm | mcp | probe) and the gateway's own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1) | [optional] 
**localMcp** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env | [optional] 
**warm** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


