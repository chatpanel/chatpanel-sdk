# ChatPanel.Sdk.Model.RuntimeRecipe

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | 
**Model** | **string** | owner/name:QUANT — what to pass as the service&#39;s model. | 
**Quant** | **string** |  | 
**Quants** | [**List&lt;RuntimeRecipeQuantsInner&gt;**](RuntimeRecipeQuantsInner.md) |  | 
**Arch** | **string** | The weights&#39; general.architecture; null when the header could not be read. | [optional] 
**Layout** | **string** |  | [optional] 
**Main** | **string** | The weights file in the repo (the first shard of a split model). | [optional] 
**Size** | **int** | Bytes of the weights for this quant. | [optional] 
**Fits** | **bool** | Weights + projector + draft against about three quarters of the memory; null when the memory is unknown. | [optional] 
**RamGB** | **decimal** |  | [optional] 
**Projector** | [**RuntimeRecipeProjector**](RuntimeRecipeProjector.md) |  | [optional] 
**Draft** | [**RuntimeRecipeDraft**](RuntimeRecipeDraft.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

