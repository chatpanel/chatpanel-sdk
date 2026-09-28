# RecordsPage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **Bool** |  | 
**records** | [Dictionary] | Whole records; a tombstone carries &#x60;deletedAt&#x60;. | 
**next** | **String** | The cursor for the next page — pass it as &#x60;cursor&#x60; (or, paging by revision, as &#x60;after_rev&#x60;); absent on the last page. | [optional] 
**size** | **Int** |  | [optional] 
**newest** | **Int64** |  | [optional] 
**rev** | **Int64** | The newest revision (gateway 0.63.0+). Each record carries its own &#x60;rev&#x60; too. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


