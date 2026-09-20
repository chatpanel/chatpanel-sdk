# ChatPanel.Sdk.Model.ExtractRequest
Either `name` + `data` (open a document) or `hash` + `page` (read one page of an open document).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** | The file name — its extension helps tell office formats apart. | [optional] 
**Type** | **string** | The client&#39;s guess at the type (e.g. &#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional] 
**Data** | **byte[]** | The whole file, base64. At most 64 MB decoded. | [optional] 
**Hash** | **string** | The &#x60;hash&#x60; an open call returned. | [optional] 
**Page** | **int** | The page to read, 1-based. | [optional] 
**BudgetMs** | **decimal** | Refused before parsing if the worker&#39;s record predicts it cannot be met. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

