
# AgentExportPlan

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **to** | **kotlin.String** |  |  [optional] |
| **label** | **kotlin.String** |  |  [optional] |
| **path** | **kotlin.String** | The exact file that would be written. |  [optional] |
| **text** | **kotlin.String** | Its rendered contents. |  [optional] |
| **exists** | **kotlin.Boolean** |  |  [optional] |
| **status** | [**inline**](#Status) | &#x60;theirs&#x60; means ChatPanel did not write it, or it has been edited since. |  [optional] |
| **fidelity** | [**AgentFidelity**](AgentFidelity.md) |  |  [optional] |


<a id="Status"></a>
## Enum: status
| Name | Value |
| ---- | ----- |
| status | new, ours, theirs |



