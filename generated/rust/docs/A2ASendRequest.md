# A2ASendRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | Option<**String**> |  | [optional]
**card** | Option<[**models::AgentCard**](AgentCard.md)> |  | [optional]
**text** | Option<**String**> | Shorthand for a one-part text message. | [optional]
**message** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A full A2A Message. | [optional]
**context_id** | Option<**String**> | Groups related interactions. | [optional]
**task_id** | Option<**String**> | Continues an existing task — how an input or auth stop is answered. | [optional]
**return_immediately** | Option<**bool**> | Do not wait for a terminal or interrupted state. | [optional]
**auth** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


