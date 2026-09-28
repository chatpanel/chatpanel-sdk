# chatpanel.model.PutRecordsResponse

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**written** | **int** |  | 
**ids** | **BuiltList&lt;String&gt;** |  | [optional] 
**sealed_** | **int** |  | [optional] 
**size** | **int** |  | [optional] 
**revs** | **BuiltMap&lt;String, int&gt;** | Each written record's new revision (gateway 0.63.0+). | [optional] 
**conflicts** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | The current record for each one sent with a `baseRev` that is no longer current — merge and send again. | [optional] 
**merged** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Gateway 0.64.0+, with `merge: true`: each note merged from an outdated copy, as stored (with its new `rev`) — replace yours with it. | [optional] 
**rev** | **int** | The newest revision after this write. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


