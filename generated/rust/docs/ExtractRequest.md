# ExtractRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> | The file name — its extension helps tell office formats apart. | [optional]
**r#type** | Option<**String**> | The client's guess at the type (e.g. `pdf`, `docx`); the bytes decide. | [optional]
**data** | Option<**String**> | The whole file, base64. At most 64 MB decoded. | [optional]
**hash** | Option<**String**> | The `hash` an open call returned. | [optional]
**page** | Option<**i32**> | The page to read, 1-based. | [optional]
**budget_ms** | Option<**f64**> | Refused before parsing if the worker's record predicts it cannot be met. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


