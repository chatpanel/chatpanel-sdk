# EmbedRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**input** | [**models::EmbedRequestInput**](EmbedRequestInput.md) |  | 
**model** | Option<**String**> | The model `GET /v1/capabilities` lists for `embed`; 404 otherwise. | [optional]
**kind** | Option<**Kind**> | What the texts are — a model with instruction prefixes (E5) prefixes each accordingly. (enum: query, passage) | [optional][default to Passage]
**budget_ms** | Option<**f64**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


