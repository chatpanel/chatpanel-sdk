

# A2AResult

The reply, plus the two facts every caller derives — done, and what a person must do.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  [optional] |
|**kind** | [**KindEnum**](#KindEnum) | A2A returns one or the other; an agent answering at once creates no task. |  [optional] |
|**task** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**message** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**text** | **String** | The answer as text — artifacts first, then what the agent actually said. |  [optional] |
|**done** | **Boolean** |  |  [optional] |
|**needs** | [**NeedsEnum**](#NeedsEnum) | &#x60;answer&#x60; for TASK_STATE_INPUT_REQUIRED, &#x60;approval&#x60; for TASK_STATE_AUTH_REQUIRED, null otherwise. |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TASK | &quot;task&quot; |
| MESSAGE | &quot;message&quot; |



## Enum: NeedsEnum

| Name | Value |
|---- | -----|
| ANSWER | &quot;answer&quot; |
| APPROVAL | &quot;approval&quot; |



