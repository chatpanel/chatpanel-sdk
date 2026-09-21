
# RerankRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **query** | **kotlin.String** |  |  |
| **documents** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  |
| **topN** | **kotlin.Int** | Return only the best this many. |  [optional] |
| **model** | **kotlin.String** | The model this provider serves; 404 otherwise. |  [optional] |
| **budgetMs** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Refused before dialling if the gateway&#39;s record predicts it cannot be met. |  [optional] |



