# PutRecordsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **Bool** |  | 
**written** | **Int** |  | 
**ids** | **[String]** |  | [optional] 
**sealed** | **Int** |  | [optional] 
**size** | **Int** |  | [optional] 
**revs** | **[String: Int64]** | Each written record&#39;s new revision (gateway 0.63.0+). | [optional] 
**conflicts** | [Dictionary] | The current record for each one sent with a &#x60;baseRev&#x60; that is no longer current — merge and send again. | [optional] 
**rev** | **Int64** | The newest revision after this write. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


