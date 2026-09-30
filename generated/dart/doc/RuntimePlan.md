# chatpanel.model.RuntimePlan

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**service** | **String** |  | [optional] 
**model** | **String** |  | [optional] 
**needMB** | **int** | Weights + KV cache + 10% headroom. | [optional] 
**weightsMB** | **int** |  | [optional] 
**kvMB** | **int** | The KV cache for the context; null when the model's config.json is not on disk. | [optional] 
**context** | **int** |  | [optional] 
**contextCounted** | **bool** |  | [optional] 
**source_** | **String** |  | [optional] 
**fits** | **bool** |  | [optional] 
**live** | [**RuntimePlanLive**](RuntimePlanLive.md) |  | [optional] 
**advice** | **String** | One sentence for the person. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


