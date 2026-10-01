
# WebSearchResult

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **rank** | **kotlin.Int** |  |  |
| **url** | **kotlin.String** |  |  |
| **title** | **kotlin.String** |  |  |
| **snippet** | **kotlin.String** |  |  |
| **engine** | **kotlin.String** | The engine that produced it (SearXNG: the first of &#x60;engines&#x60;; serp: the engine asked — &#x60;duckduckgo&#x60;, &#x60;startpage&#x60;, &#x60;bing&#x60;, or &#x60;api:&lt;id&gt;&#x60; for a search API such as &#x60;api:exa&#x60;). Since gateway 0.79.0 every result carries it; the provider id when nothing finer is known. |  [optional] |
| **via** | **kotlin.String** | The kind of door it came through: &#x60;gateway&#x60; · &#x60;searxng&#x60; · &#x60;api&#x60; (a search API) · &#x60;page&#x60; (a results page read) · &#x60;browser&#x60; (the person&#39;s own browser). A client meeting a value it does not know shows it as it is. Since gateway 0.79.0. |  [optional] |
| **engines** | **kotlin.collections.List&lt;kotlin.String&gt;** | SearXNG: every engine that returned it. |  [optional] |
| **score** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | SearXNG&#39;s fused score. |  [optional] |
| **publishedDate** | **kotlin.String** |  |  [optional] |
| **read** | [**ReadResponse**](ReadResponse.md) | Present for the top &#x60;read&#x60; results. |  [optional] |



