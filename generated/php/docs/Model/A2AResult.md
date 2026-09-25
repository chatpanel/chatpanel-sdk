# A2AResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | [optional]
**kind** | **string** | A2A returns one or the other; an agent answering at once creates no task. | [optional]
**task** | **array<string,mixed>** |  | [optional]
**message** | **array<string,mixed>** |  | [optional]
**text** | **string** | The answer as text — artifacts first, then what the agent actually said. | [optional]
**done** | **bool** |  | [optional]
**needs** | **string** | &#x60;answer&#x60; for TASK_STATE_INPUT_REQUIRED, &#x60;approval&#x60; for TASK_STATE_AUTH_REQUIRED, null otherwise. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
