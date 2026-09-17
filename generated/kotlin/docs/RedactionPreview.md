
# RedactionPreview

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **text** | **kotlin.String** | What the model would receive. |  |
| **count** | **kotlin.Int** |  |  |
| **sanitized** | **kotlin.Int** |  |  [optional] |
| **tier** | [**inline**](#Tier) |  |  [optional] |
| **entities** | **kotlin.collections.List&lt;kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;&gt;** | Placeholder tokens and their types — never the real values. |  [optional] |
| **detector** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |


<a id="Tier"></a>
## Enum: tier
| Name | Value |
| ---- | ----- |
| tier | basic, full |



