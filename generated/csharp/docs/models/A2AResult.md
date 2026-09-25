# ChatPanel.Sdk.Model.A2AResult
The reply, plus the two facts every caller derives — done, and what a person must do.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ok** | **bool** |  | [optional] 
**Kind** | **string** | A2A returns one or the other; an agent answering at once creates no task. | [optional] 
**Task** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**Message** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**Text** | **string** | The answer as text — artifacts first, then what the agent actually said. | [optional] 
**Done** | **bool** |  | [optional] 
**Needs** | **string** | &#x60;answer&#x60; for TASK_STATE_INPUT_REQUIRED, &#x60;approval&#x60; for TASK_STATE_AUTH_REQUIRED, null otherwise. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

