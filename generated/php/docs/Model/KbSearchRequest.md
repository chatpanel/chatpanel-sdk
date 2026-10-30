# KbSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **string** |  |
**limit** | **int** |  | [optional] [default to 10]
**hops** | **int** | Graph expansion of the best hits; 0 &#x3D; off. | [optional] [default to 1]
**docs** | **string[]** | Only these documents. | [optional]
**queries** | **string[]** | The caller&#39;s own phrasings, searched too. | [optional]
**rerank** | **bool** | &#x60;false&#x60;: skip the reranker. | [optional] [default to true]
**budget_ms** | **float** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
