
# WebSearchResponse

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **results** | [**kotlin.collections.List&lt;WebSearchResult&gt;**](WebSearchResult.md) |  |  |
| **provider** | **kotlin.String** |  |  |
| **ms** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  |
| **answers** | **kotlin.collections.List&lt;kotlin.String&gt;** | SearXNG&#39;s direct answers, when it had any. |  [optional] |
| **suggestions** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **engines** | **kotlin.collections.List&lt;kotlin.String&gt;** | What was actually asked. |  [optional] |
| **unresponsive** | **kotlin.collections.List&lt;kotlin.String&gt;** | SearXNG engines that did not answer. |  [optional] |
| **redacted** | **kotlin.Boolean** | Layer-1 redaction removed something from the query. |  [optional] |
| **query** | **kotlin.String** | The query as sent, when &#x60;redacted&#x60;. |  [optional] |



