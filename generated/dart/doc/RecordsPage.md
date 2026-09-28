# chatpanel.model.RecordsPage

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**records** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Whole records; a tombstone carries `deletedAt`. | 
**next** | **String** | The cursor for the next page — pass it as `cursor` (or, paging by revision, as `after_rev`); absent on the last page. | [optional] 
**size** | **int** |  | [optional] 
**newest** | **int** |  | [optional] 
**rev** | **int** | The newest revision (gateway 0.63.0+). Each record carries its own `rev` too. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


