# chatpanel.model.RuntimeDocument

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sandbox** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | the bridge's /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows) | [optional] 
**processes** | [**RuntimeDocumentProcesses**](RuntimeDocumentProcesses.md) |  | [optional] 
**containers** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1) | [optional] 
**refused** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | { id, engine, host, at } newest first | [optional] 
**bridge** | [**RuntimeDocumentBridge**](RuntimeDocumentBridge.md) |  | [optional] 
**engines** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note } | [optional] 
**services** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


