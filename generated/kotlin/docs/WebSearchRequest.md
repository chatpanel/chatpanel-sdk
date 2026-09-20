
# WebSearchRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **q** | **kotlin.String** |  |  |
| **limit** | **kotlin.Int** |  |  [optional] |
| **lang** | **kotlin.String** | en or en-US; honoured by SearXNG. |  [optional] |
| **site** | **kotlin.String** | A hostname — the site: operator. |  [optional] |
| **freshness** | [**inline**](#Freshness) | Honoured by SearXNG (time_range); week maps to month. |  [optional] |
| **read** | **kotlin.Int** | Read the top N results in this request. |  [optional] |
| **provider** | **kotlin.String** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;search&#x60;; 404 otherwise. |  [optional] |
| **budgetMs** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  [optional] |


<a id="Freshness"></a>
## Enum: freshness
| Name | Value |
| ---- | ----- |
| freshness | day, week, month, year |



