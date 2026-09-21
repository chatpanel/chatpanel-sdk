
# DecideRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **state** | **kotlin.String** | The text judged. |  |
| **questions** | [**kotlin.collections.Map&lt;kotlin.String, DecideQuestion&gt;**](DecideQuestion.md) | Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*). |  |
| **model** | **kotlin.String** | The model this provider serves; 404 otherwise. |  [optional] |
| **budgetMs** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  [optional] |



