# chatpanel.model.ExtractRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The file name — its extension helps tell office formats apart. | [optional] 
**type** | **String** | The client's guess at the type (e.g. `pdf`, `docx`); the bytes decide. | [optional] 
**data** | **String** | The whole file, base64. At most 64 MB decoded. | [optional] 
**hash** | **String** | The `hash` an open call returned. | [optional] 
**page** | **int** | The page to read, 1-based. | [optional] 
**budgetMs** | **num** | Refused before parsing if the worker's record predicts it cannot be met. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


