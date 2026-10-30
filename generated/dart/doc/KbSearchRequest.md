# chatpanel.model.KbSearchRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | 
**limit** | **int** |  | [optional] [default to 10]
**hops** | **int** | Graph expansion of the best hits; 0 = off. | [optional] [default to 1]
**docs** | **BuiltList&lt;String&gt;** | Only these documents. | [optional] 
**queries** | **BuiltList&lt;String&gt;** | The caller's own phrasings, searched too. | [optional] 
**rerank** | **bool** | `false`: skip the reranker. | [optional] [default to true]
**budgetMs** | **num** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


