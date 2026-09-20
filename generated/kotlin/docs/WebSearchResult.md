
# WebSearchResult

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **rank** | **kotlin.Int** |  |  |
| **url** | **kotlin.String** |  |  |
| **title** | **kotlin.String** |  |  |
| **snippet** | **kotlin.String** |  |  |
| **engine** | **kotlin.String** | The engine that produced it (SearXNG: the first of &#x60;engines&#x60;; serp: the results page asked). |  [optional] |
| **engines** | **kotlin.collections.List&lt;kotlin.String&gt;** | SearXNG: every engine that returned it. |  [optional] |
| **score** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | SearXNG&#39;s fused score. |  [optional] |
| **publishedDate** | **kotlin.String** |  |  [optional] |
| **read** | [**ReadResponse**](ReadResponse.md) | Present for the top &#x60;read&#x60; results. |  [optional] |



