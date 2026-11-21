
# RuntimeRecipe

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  |
| **model** | **kotlin.String** | owner/name:QUANT — what to pass as the service&#39;s model. |  |
| **quant** | **kotlin.String** |  |  |
| **quants** | [**kotlin.collections.List&lt;RuntimeRecipeQuantsInner&gt;**](RuntimeRecipeQuantsInner.md) |  |  |
| **arch** | **kotlin.String** | The weights&#39; general.architecture; null when the header could not be read. |  [optional] |
| **layout** | [**inline**](#Layout) |  |  [optional] |
| **main** | **kotlin.String** | The weights file in the repo (the first shard of a split model). |  [optional] |
| **propertySize** | **kotlin.Int** | Bytes of the weights for this quant. |  [optional] |
| **fits** | **kotlin.Boolean** | Weights + projector + draft against about three quarters of the memory; null when the memory is unknown. |  [optional] |
| **ramGB** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  [optional] |
| **projector** | [**RuntimeRecipeProjector**](RuntimeRecipeProjector.md) |  |  [optional] |
| **draft** | [**RuntimeRecipeDraft**](RuntimeRecipeDraft.md) |  |  [optional] |


<a id="Layout"></a>
## Enum: layout
| Name | Value |
| ---- | ----- |
| layout | main, alt |



