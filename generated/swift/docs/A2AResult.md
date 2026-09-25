# A2AResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **Bool** |  | [optional] 
**kind** | **String** | A2A returns one or the other; an agent answering at once creates no task. | [optional] 
**task** | **[String: JSONValue]** |  | [optional] 
**message** | **[String: JSONValue]** |  | [optional] 
**text** | **String** | The answer as text — artifacts first, then what the agent actually said. | [optional] 
**done** | **Bool** |  | [optional] 
**needs** | **String** | &#x60;answer&#x60; for TASK_STATE_INPUT_REQUIRED, &#x60;approval&#x60; for TASK_STATE_AUTH_REQUIRED, null otherwise. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


