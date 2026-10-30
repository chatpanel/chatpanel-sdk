# KbSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | 
**limit** | **Int** |  | [optional] [default to 10]
**hops** | **Int** | Graph expansion of the best hits; 0 &#x3D; off. | [optional] [default to 1]
**docs** | **[String]** | Only these documents. | [optional] 
**queries** | **[String]** | The caller&#39;s own phrasings, searched too. | [optional] 
**rerank** | **Bool** | &#x60;false&#x60;: skip the reranker. | [optional] [default to true]
**budgetMs** | **Double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


