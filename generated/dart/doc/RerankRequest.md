# chatpanel.model.RerankRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | 
**documents** | **BuiltList&lt;String&gt;** |  | 
**topN** | **int** | Return only the best this many. | [optional] 
**model** | **String** | The model this provider serves; 404 otherwise. | [optional] 
**budgetMs** | **num** | Refused before dialling if the gateway's record predicts it cannot be met. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


