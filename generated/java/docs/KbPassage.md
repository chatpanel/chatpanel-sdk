

# KbPassage


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** | &#x60;&lt;doc&gt;#&lt;n&gt;&#x60;, or &#x60;note:&lt;id&gt;&#x60;. |  |
|**doc** | **String** |  |  [optional] |
|**title** | **String** |  |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) |  |  [optional] |
|**page** | **Integer** |  |  [optional] |
|**pageEnd** | **Integer** |  |  [optional] |
|**section** | **String** | The heading path, &#x60; › &#x60;-joined. |  [optional] |
|**text** | **String** |  |  |
|**chars** | **Integer** |  |  [optional] |
|**score** | **BigDecimal** | The fused rank score (RRF) — only its order means anything. |  [optional] |
|**scores** | **Map&lt;String, BigDecimal&gt;** | Each lane&#39;s own score (&#x60;text&#x60;, &#x60;vector&#x60;, &#x60;rerank&#x60;), comparable within one query. |  [optional] |
|**rerank** | **BigDecimal** |  |  [optional] |
|**lanes** | [**List&lt;LanesEnum&gt;**](#List&lt;LanesEnum&gt;) |  |  [optional] |
|**via** | **List&lt;String&gt;** | For a graph hit: the node(s) it was reached through. |  [optional] |
|**cite** | **String** | As the model is told to write it: &#x60;[report.pdf p.12]&#x60;. |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | A note&#39;s. |  [optional] |
|**cites** | **List&lt;String&gt;** | A note&#39;s passage ids. |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TEXT | &quot;text&quot; |
| NOTE | &quot;note&quot; |



## Enum: List&lt;LanesEnum&gt;

| Name | Value |
|---- | -----|
| TEXT | &quot;text&quot; |
| VECTOR | &quot;vector&quot; |
| GRAPH | &quot;graph&quot; |
| NOTES | &quot;notes&quot; |
| RERANK | &quot;rerank&quot; |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| PROPOSED | &quot;proposed&quot; |
| ACCEPTED | &quot;accepted&quot; |



