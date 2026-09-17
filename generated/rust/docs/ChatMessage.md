# ChatMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | **Role** |  (enum: system, user, assistant, tool) | 
**content** | Option<[**models::ChatMessageContent**](ChatMessageContent.md)> |  | [optional]
**name** | Option<**String**> |  | [optional]
**tool_calls** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> |  | [optional]
**tool_call_id** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


