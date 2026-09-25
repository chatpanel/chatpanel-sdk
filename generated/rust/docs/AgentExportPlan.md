# AgentExportPlan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | Option<**String**> |  | [optional]
**label** | Option<**String**> |  | [optional]
**path** | Option<**String**> | The exact file that would be written. | [optional]
**text** | Option<**String**> | Its rendered contents. | [optional]
**exists** | Option<**bool**> |  | [optional]
**status** | Option<**Status**> | `theirs` means ChatPanel did not write it, or it has been edited since. (enum: new, ours, theirs) | [optional]
**fidelity** | Option<[**models::AgentFidelity**](AgentFidelity.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


