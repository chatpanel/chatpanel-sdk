# chatpanel.model.DecideRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | **String** | The text judged. | 
**questions** | [**BuiltMap&lt;String, DecideQuestion&gt;**](DecideQuestion.md) | Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*). | 
**model** | **String** | The model this provider serves; 404 otherwise. | [optional] 
**budgetMs** | **num** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


