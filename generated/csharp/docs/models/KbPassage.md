# ChatPanel.Sdk.Model.KbPassage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | &#x60;&lt;doc&gt;#&lt;n&gt;&#x60;, or &#x60;note:&lt;id&gt;&#x60;. | 
**Text** | **string** |  | 
**Doc** | **string** |  | [optional] 
**Title** | **string** |  | [optional] 
**Kind** | **string** |  | [optional] 
**Page** | **int** |  | [optional] 
**PageEnd** | **int** |  | [optional] 
**Section** | **string** | The heading path, &#x60; › &#x60;-joined. | [optional] 
**Chars** | **int** |  | [optional] 
**Score** | **decimal** | The fused rank score (RRF) — only its order means anything. | [optional] 
**Scores** | **Dictionary&lt;string, decimal&gt;** | Each lane&#39;s own score (&#x60;text&#x60;, &#x60;vector&#x60;, &#x60;rerank&#x60;), comparable within one query. | [optional] 
**Rerank** | **decimal** |  | [optional] 
**Lanes** | **List&lt;KbPassage.LanesEnum&gt;** |  | [optional] 
**Via** | **List&lt;string&gt;** | For a graph hit: the node(s) it was reached through. | [optional] 
**Cite** | **string** | As the model is told to write it: &#x60;[report.pdf p.12]&#x60;. | [optional] 
**Status** | **string** | A note&#39;s. | [optional] 
**Cites** | **List&lt;string&gt;** | A note&#39;s passage ids. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

