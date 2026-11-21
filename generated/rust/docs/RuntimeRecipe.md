# RuntimeRecipe

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**model** | **String** | owner/name:QUANT — what to pass as the service's model. | 
**quant** | **String** |  | 
**arch** | Option<**String**> | The weights' general.architecture; null when the header could not be read. | [optional]
**layout** | Option<**Layout**> |  (enum: main, alt) | [optional]
**main** | Option<**String**> | The weights file in the repo (the first shard of a split model). | [optional]
**size** | Option<**i32**> | Bytes of the weights for this quant. | [optional]
**fits** | Option<**bool**> | Weights + projector + draft against about three quarters of the memory; null when the memory is unknown. | [optional]
**ram_gb** | Option<**f64**> |  | [optional]
**quants** | [**Vec<models::RuntimeRecipeQuantsInner>**](RuntimeRecipeQuantsInner.md) |  | 
**projector** | Option<[**models::RuntimeRecipeProjector**](RuntimeRecipeProjector.md)> |  | [optional]
**draft** | Option<[**models::RuntimeRecipeDraft**](RuntimeRecipeDraft.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


