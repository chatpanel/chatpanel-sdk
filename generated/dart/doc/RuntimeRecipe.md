# chatpanel.model.RuntimeRecipe

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**model** | **String** | owner/name:QUANT — what to pass as the service's model. | 
**quant** | **String** |  | 
**arch** | **String** | The weights' general.architecture; null when the header could not be read. | [optional] 
**layout** | **String** |  | [optional] 
**main** | **String** | The weights file in the repo (the first shard of a split model). | [optional] 
**size** | **int** | Bytes of the weights for this quant. | [optional] 
**fits** | **bool** | Weights + projector + draft against about three quarters of the memory; null when the memory is unknown. | [optional] 
**ramGB** | **num** |  | [optional] 
**quants** | [**BuiltList&lt;RuntimeRecipeQuantsInner&gt;**](RuntimeRecipeQuantsInner.md) |  | 
**projector** | [**RuntimeRecipeProjector**](RuntimeRecipeProjector.md) |  | [optional] 
**draft** | [**RuntimeRecipeDraft**](RuntimeRecipeDraft.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


