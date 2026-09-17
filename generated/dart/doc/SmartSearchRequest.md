# chatpanel.model.SmartSearchRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**RecordType**](RecordType.md) |  | [optional] 
**since** | **int** | ms since epoch | [optional] 
**before** | **int** | ms since epoch | [optional] 
**limit** | **int** |  | [optional] [default to 10]
**question** | **String** | The natural-language question. | 
**queries** | **BuiltList&lt;String&gt;** | 2–4 keyword phrasings of your own; they lead. | [optional] 
**maxQueries** | **int** |  | [optional] [default to 4]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


