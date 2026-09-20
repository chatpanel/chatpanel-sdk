# ExtractRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The file name — its extension helps tell office formats apart. | [optional]
**type** | **string** | The client&#39;s guess at the type (e.g. &#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional]
**data** | **string** | The whole file, base64. At most 64 MB decoded. | [optional]
**hash** | **string** | The &#x60;hash&#x60; an open call returned. | [optional]
**page** | **int** | The page to read, 1-based. | [optional]
**budget_ms** | **float** | Refused before parsing if the worker&#39;s record predicts it cannot be met. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
