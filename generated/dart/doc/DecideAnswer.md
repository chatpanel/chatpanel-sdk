# chatpanel.model.DecideAnswer

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | [**JsonObject**](.md) | choice: the option picked; score: a number on the rubric; noul: a boolean. | 
**p** | **num** | The probability of `value` — read it as one only when the response says `calibrated`. | 
**options** | [**BuiltList&lt;DecideAnswerOption&gt;**](DecideAnswerOption.md) | The whole distribution. | 
**confidence** | **num** | The provider's own confidence, when it reports one. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


