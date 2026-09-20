
# ReadResponse

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **url** | **kotlin.String** | Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped. |  |
| **title** | **kotlin.String** |  |  |
| **format** | [**inline**](#Format) |  |  |
| **chars** | **kotlin.Int** | Length of the content field. |  |
| **truncated** | **kotlin.Boolean** |  |  |
| **sections** | [**kotlin.collections.List&lt;ReadSection&gt;**](ReadSection.md) |  |  |
| **provider** | **kotlin.String** |  |  |
| **ms** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  |
| **requested** | **kotlin.String** | The URL that was asked for. |  [optional] |
| **author** | **kotlin.String** |  |  [optional] |
| **published** | **kotlin.String** | As the page declared it (ISO date or datetime when it gave one). |  [optional] |
| **site** | **kotlin.String** | The hostname of &#x60;url&#x60;. |  [optional] |
| **lang** | **kotlin.String** |  |  [optional] |
| **markdown** | **kotlin.String** | The content, when &#x60;format&#x60; is markdown. |  [optional] |
| **text** | **kotlin.String** | The content, when &#x60;format&#x60; is text. |  [optional] |
| **fetched** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) | When the page was fetched (the cached copy&#39;s time on a cache hit). |  [optional] |
| **cached** | **kotlin.Boolean** |  |  [optional] |
| **restricted** | [**ReadRestriction**](ReadRestriction.md) | Set when the page was not read as the article; the content is then the request&#39;s &#x60;snippet&#x60;. |  [optional] |


<a id="Format"></a>
## Enum: format
| Name | Value |
| ---- | ----- |
| format | markdown, text |



