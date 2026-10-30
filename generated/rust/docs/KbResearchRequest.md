# KbResearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**question** | **String** |  | 
**answer** | Option<**String**> | The person's answer to a previous `ask` (a document title, or `all`). | [optional]
**ask** | Option<**bool**> | `false`: never pause; search every document. | [optional][default to true]
**model** | Option<**String**> | A model (from `GET /v1/models`) for the evidence check; token-gated. | [optional]
**previous** | Option<**std::collections::HashMap<String, serde_json::Value>**> | The previous response's `frame`, for a follow-up. | [optional]
**docs** | Option<**Vec<String>**> | Only these documents. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


