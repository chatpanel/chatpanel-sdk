# RedactionPreview

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** | What the model would receive. | 
**count** | **i32** |  | 
**sanitized** | Option<**i32**> |  | [optional]
**tier** | Option<**Tier**> |  (enum: basic, full) | [optional]
**entities** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | Placeholder tokens and their types — never the real values. | [optional]
**detector** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


