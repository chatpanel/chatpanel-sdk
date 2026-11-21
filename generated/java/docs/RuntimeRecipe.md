

# RuntimeRecipe


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**model** | **String** | owner/name:QUANT — what to pass as the service&#39;s model. |  |
|**quant** | **String** |  |  |
|**arch** | **String** | The weights&#39; general.architecture; null when the header could not be read. |  [optional] |
|**layout** | [**LayoutEnum**](#LayoutEnum) |  |  [optional] |
|**main** | **String** | The weights file in the repo (the first shard of a split model). |  [optional] |
|**size** | **Integer** | Bytes of the weights for this quant. |  [optional] |
|**fits** | **Boolean** | Weights + projector + draft against about three quarters of the memory; null when the memory is unknown. |  [optional] |
|**ramGB** | **BigDecimal** |  |  [optional] |
|**quants** | [**List&lt;RuntimeRecipeQuantsInner&gt;**](RuntimeRecipeQuantsInner.md) |  |  |
|**projector** | [**RuntimeRecipeProjector**](RuntimeRecipeProjector.md) |  |  [optional] |
|**draft** | [**RuntimeRecipeDraft**](RuntimeRecipeDraft.md) |  |  [optional] |



## Enum: LayoutEnum

| Name | Value |
|---- | -----|
| MAIN | &quot;main&quot; |
| ALT | &quot;alt&quot; |



