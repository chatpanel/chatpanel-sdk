# KbSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | 
**limit** | Option<**i32**> |  | [optional][default to 10]
**hops** | Option<**i32**> | Graph expansion of the best hits; 0 = off. | [optional][default to 1]
**docs** | Option<**Vec<String>**> | Only these documents. | [optional]
**queries** | Option<**Vec<String>**> | The caller's own phrasings, searched too. | [optional]
**rerank** | Option<**bool**> | `false`: skip the reranker. | [optional][default to true]
**budget_ms** | Option<**f64**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


