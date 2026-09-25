# A2AResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | Option<**bool**> |  | [optional]
**kind** | Option<**Kind**> | A2A returns one or the other; an agent answering at once creates no task. (enum: task, message) | [optional]
**task** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**message** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**text** | Option<**String**> | The answer as text — artifacts first, then what the agent actually said. | [optional]
**done** | Option<**bool**> |  | [optional]
**needs** | Option<**Needs**> | `answer` for TASK_STATE_INPUT_REQUIRED, `approval` for TASK_STATE_AUTH_REQUIRED, null otherwise. (enum: answer, approval) | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


