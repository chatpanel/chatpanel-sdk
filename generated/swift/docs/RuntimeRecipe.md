# RuntimeRecipe

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **Bool** |  | 
**model** | **String** | owner/name:QUANT — what to pass as the service&#39;s model. | 
**quant** | **String** |  | 
**arch** | **String** | The weights&#39; general.architecture; null when the header could not be read. | [optional] 
**layout** | **String** |  | [optional] 
**main** | **String** | The weights file in the repo (the first shard of a split model). | [optional] 
**size** | **Int** | Bytes of the weights for this quant. | [optional] 
**fits** | **Bool** | Weights + projector + draft against about three quarters of the memory; null when the memory is unknown. | [optional] 
**ramGB** | **Double** |  | [optional] 
**quants** | [RuntimeRecipeQuantsInner] |  | 
**projector** | [**RuntimeRecipeProjector**](RuntimeRecipeProjector.md) |  | [optional] 
**draft** | [**RuntimeRecipeDraft**](RuntimeRecipeDraft.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


