
# KbSearchRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **query** | **kotlin.String** |  |  |
| **limit** | **kotlin.Int** |  |  [optional] |
| **hops** | **kotlin.Int** | Graph expansion of the best hits; 0 &#x3D; off. |  [optional] |
| **docs** | **kotlin.collections.List&lt;kotlin.String&gt;** | Only these documents. |  [optional] |
| **queries** | **kotlin.collections.List&lt;kotlin.String&gt;** | The caller&#39;s own phrasings, searched too. |  [optional] |
| **rerank** | **kotlin.Boolean** | &#x60;false&#x60;: skip the reranker. |  [optional] |
| **budgetMs** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  [optional] |



