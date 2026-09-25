
# A2AResult

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  [optional] |
| **kind** | [**inline**](#Kind) | A2A returns one or the other; an agent answering at once creates no task. |  [optional] |
| **task** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) |  |  [optional] |
| **message** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) |  |  [optional] |
| **text** | **kotlin.String** | The answer as text — artifacts first, then what the agent actually said. |  [optional] |
| **done** | **kotlin.Boolean** |  |  [optional] |
| **needs** | [**inline**](#Needs) | &#x60;answer&#x60; for TASK_STATE_INPUT_REQUIRED, &#x60;approval&#x60; for TASK_STATE_AUTH_REQUIRED, null otherwise. |  [optional] |


<a id="Kind"></a>
## Enum: kind
| Name | Value |
| ---- | ----- |
| kind | task, message |


<a id="Needs"></a>
## Enum: needs
| Name | Value |
| ---- | ----- |
| needs | answer, approval |



