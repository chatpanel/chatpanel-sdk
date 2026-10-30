# KbPassage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** | &#x60;&lt;doc&gt;#&lt;n&gt;&#x60;, or &#x60;note:&lt;id&gt;&#x60;. |
**doc** | **string** |  | [optional]
**title** | **string** |  | [optional]
**kind** | **string** |  | [optional]
**page** | **int** |  | [optional]
**page_end** | **int** |  | [optional]
**section** | **string** | The heading path, &#x60; › &#x60;-joined. | [optional]
**text** | **string** |  |
**chars** | **int** |  | [optional]
**score** | **float** | The fused rank score (RRF) — only its order means anything. | [optional]
**scores** | **array<string,float>** | Each lane&#39;s own score (&#x60;text&#x60;, &#x60;vector&#x60;, &#x60;rerank&#x60;), comparable within one query. | [optional]
**rerank** | **float** |  | [optional]
**lanes** | **string[]** |  | [optional]
**via** | **string[]** | For a graph hit: the node(s) it was reached through. | [optional]
**cite** | **string** | As the model is told to write it: &#x60;[report.pdf p.12]&#x60;. | [optional]
**status** | **string** | A note&#39;s. | [optional]
**cites** | **string[]** | A note&#39;s passage ids. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
