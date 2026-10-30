# KbPassage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | &#x60;&lt;doc&gt;#&lt;n&gt;&#x60;, or &#x60;note:&lt;id&gt;&#x60;. | 
**doc** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**kind** | **String** |  | [optional] 
**page** | **Int** |  | [optional] 
**pageEnd** | **Int** |  | [optional] 
**section** | **String** | The heading path, &#x60; › &#x60;-joined. | [optional] 
**text** | **String** |  | 
**chars** | **Int** |  | [optional] 
**score** | **Double** | The fused rank score (RRF) — only its order means anything. | [optional] 
**scores** | **[String: Double]** | Each lane&#39;s own score (&#x60;text&#x60;, &#x60;vector&#x60;, &#x60;rerank&#x60;), comparable within one query. | [optional] 
**rerank** | **Double** |  | [optional] 
**lanes** | **[String]** |  | [optional] 
**via** | **[String]** | For a graph hit: the node(s) it was reached through. | [optional] 
**cite** | **String** | As the model is told to write it: &#x60;[report.pdf p.12]&#x60;. | [optional] 
**status** | **String** | A note&#39;s. | [optional] 
**cites** | **[String]** | A note&#39;s passage ids. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


