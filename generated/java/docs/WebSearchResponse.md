

# WebSearchResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**results** | [**List&lt;WebSearchResult&gt;**](WebSearchResult.md) |  |  |
|**answers** | **List&lt;String&gt;** | SearXNG&#39;s direct answers, when it had any. |  [optional] |
|**suggestions** | **List&lt;String&gt;** |  |  [optional] |
|**engines** | **List&lt;String&gt;** | What was actually asked. |  [optional] |
|**unresponsive** | **List&lt;String&gt;** | SearXNG engines that did not answer. |  [optional] |
|**redacted** | **Boolean** | Layer-1 redaction removed something from the query. |  [optional] |
|**query** | **String** | The query as sent, when &#x60;redacted&#x60;. |  [optional] |
|**provider** | **String** |  |  |
|**ms** | **BigDecimal** |  |  |



