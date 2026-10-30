
# KbPassage

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** | &#x60;&lt;doc&gt;#&lt;n&gt;&#x60;, or &#x60;note:&lt;id&gt;&#x60;. |  |
| **text** | **kotlin.String** |  |  |
| **doc** | **kotlin.String** |  |  [optional] |
| **title** | **kotlin.String** |  |  [optional] |
| **kind** | [**inline**](#Kind) |  |  [optional] |
| **page** | **kotlin.Int** |  |  [optional] |
| **pageEnd** | **kotlin.Int** |  |  [optional] |
| **section** | **kotlin.String** | The heading path, &#x60; › &#x60;-joined. |  [optional] |
| **chars** | **kotlin.Int** |  |  [optional] |
| **score** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | The fused rank score (RRF) — only its order means anything. |  [optional] |
| **scores** | [**kotlin.collections.Map&lt;kotlin.String, java.math.BigDecimal&gt;**](java.math.BigDecimal.md) | Each lane&#39;s own score (&#x60;text&#x60;, &#x60;vector&#x60;, &#x60;rerank&#x60;), comparable within one query. |  [optional] |
| **rerank** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  [optional] |
| **lanes** | [**inline**](#kotlin.collections.List&lt;Lanes&gt;) |  |  [optional] |
| **via** | **kotlin.collections.List&lt;kotlin.String&gt;** | For a graph hit: the node(s) it was reached through. |  [optional] |
| **cite** | **kotlin.String** | As the model is told to write it: &#x60;[report.pdf p.12]&#x60;. |  [optional] |
| **status** | [**inline**](#Status) | A note&#39;s. |  [optional] |
| **cites** | **kotlin.collections.List&lt;kotlin.String&gt;** | A note&#39;s passage ids. |  [optional] |


<a id="Kind"></a>
## Enum: kind
| Name | Value |
| ---- | ----- |
| kind | text, note |


<a id="kotlin.collections.List<Lanes>"></a>
## Enum: lanes
| Name | Value |
| ---- | ----- |
| lanes | text, vector, graph, notes, rerank |


<a id="Status"></a>
## Enum: status
| Name | Value |
| ---- | ----- |
| status | proposed, accepted |



