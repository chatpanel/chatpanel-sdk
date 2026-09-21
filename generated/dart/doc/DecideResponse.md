# chatpanel.model.DecideResponse

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**answers** | [**BuiltMap&lt;String, DecideAnswer&gt;**](DecideAnswer.md) | One per question asked, under the same key. | 
**model** | **String** |  | 
**ms** | **num** |  | 
**calibrated** | **bool** | Whether `p` is a calibrated probability. false for a zero-shot NLI concentration. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


