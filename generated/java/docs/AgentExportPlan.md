

# AgentExportPlan


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**to** | **String** |  |  [optional] |
|**label** | **String** |  |  [optional] |
|**path** | **String** | The exact file that would be written. |  [optional] |
|**text** | **String** | Its rendered contents. |  [optional] |
|**exists** | **Boolean** |  |  [optional] |
|**status** | [**StatusEnum**](#StatusEnum) | &#x60;theirs&#x60; means ChatPanel did not write it, or it has been edited since. |  [optional] |
|**fidelity** | [**AgentFidelity**](AgentFidelity.md) |  |  [optional] |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| NEW | &quot;new&quot; |
| OURS | &quot;ours&quot; |
| THEIRS | &quot;theirs&quot; |



