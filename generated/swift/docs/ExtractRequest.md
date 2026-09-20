# ExtractRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The file name — its extension helps tell office formats apart. | [optional] 
**type** | **String** | The client&#39;s guess at the type (e.g. &#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional] 
**data** | **Data** | The whole file, base64. At most 64 MB decoded. | [optional] 
**hash** | **String** | The &#x60;hash&#x60; an open call returned. | [optional] 
**page** | **Int** | The page to read, 1-based. | [optional] 
**budgetMs** | **Double** | Refused before parsing if the worker&#39;s record predicts it cannot be met. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


