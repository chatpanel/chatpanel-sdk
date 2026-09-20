# ReadRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Absolute http(s) URL of a public page. | 
**format** | Option<**Format**> |  (enum: markdown, text) | [optional][default to Markdown]
**max_chars** | Option<**i32**> | Cut at a section boundary near this length; `truncated` says so. | [optional]
**snippet** | Option<**String**> | A search snippet to stand in for the content when the page cannot be read. | [optional]
**provider** | Option<**String**> | One of the providers `GET /v1/capabilities` lists for `read`; 404 otherwise. | [optional]
**budget_ms** | Option<**f64**> | Refused before fetching if the provider's record predicts it cannot be met. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


