# ChatPanel.Sdk.Model.KbSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | **string** |  | 
**Limit** | **int** |  | [optional] [default to 10]
**Hops** | **int** | Graph expansion of the best hits; 0 &#x3D; off. | [optional] [default to 1]
**Docs** | **List&lt;string&gt;** | Only these documents. | [optional] 
**Queries** | **List&lt;string&gt;** | The caller&#39;s own phrasings, searched too. | [optional] 
**Rerank** | **bool** | &#x60;false&#x60;: skip the reranker. | [optional] [default to true]
**BudgetMs** | **decimal** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

