# chatpanel.model.DetectRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** |  | 
**model** | **String** | A model this provider lists; 404 otherwise. | [optional] 
**labels** | **BuiltList&lt;String&gt;** | Keep only these of the model's labels. | [optional] 
**budgetMs** | **num** | Refused before running if the provider's record predicts it cannot be met. | [optional] 
**strict** | **bool** | Return every span the provider finds, second-guessing none (redaction strictness 'strict'). A provider that does not filter ignores it. Since gateway 0.76.0. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


