
# EmbedRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **input** | [**EmbedRequestInput**](EmbedRequestInput.md) |  |  |
| **model** | **kotlin.String** | The model &#x60;GET /v1/capabilities&#x60; lists for &#x60;embed&#x60;; 404 otherwise. |  [optional] |
| **kind** | [**inline**](#Kind) | What the texts are — a model with instruction prefixes (E5) prefixes each accordingly. |  [optional] |
| **budgetMs** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  [optional] |


<a id="Kind"></a>
## Enum: kind
| Name | Value |
| ---- | ----- |
| kind | query, passage |



