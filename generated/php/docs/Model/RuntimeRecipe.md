# RuntimeRecipe

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  |
**model** | **string** | owner/name:QUANT — what to pass as the service&#39;s model. |
**quant** | **string** |  |
**arch** | **string** | The weights&#39; general.architecture; null when the header could not be read. | [optional]
**layout** | **string** |  | [optional]
**main** | **string** | The weights file in the repo (the first shard of a split model). | [optional]
**size** | **int** | Bytes of the weights for this quant. | [optional]
**fits** | **bool** | Weights + projector + draft against about three quarters of the memory; null when the memory is unknown. | [optional]
**ram_gb** | **float** |  | [optional]
**quants** | [**\ChatPanelSdk\Model\RuntimeRecipeQuantsInner[]**](RuntimeRecipeQuantsInner.md) |  |
**projector** | [**\ChatPanelSdk\Model\RuntimeRecipeProjector**](RuntimeRecipeProjector.md) |  | [optional]
**draft** | [**\ChatPanelSdk\Model\RuntimeRecipeDraft**](RuntimeRecipeDraft.md) |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
