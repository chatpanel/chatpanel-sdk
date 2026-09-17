# ChatCompletionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** | A model id from `GET /v1/models`; `claude/opus` names an agent and its model. | 
**messages** | [**Vec<models::ChatMessage>**](ChatMessage.md) |  | 
**stream** | Option<**bool**> |  | [optional]
**stream_options** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]
**tools** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> |  | [optional]
**tool_choice** | Option<**serde_json::Value**> |  | [optional]
**temperature** | Option<**f64**> |  | [optional]
**max_tokens** | Option<**i32**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


