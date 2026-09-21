
# EventsStreamEvent

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **event** | [**inline**](#Event) | The SSE event name. |  |
| **cursor** | **kotlin.collections.Map&lt;kotlin.String, kotlin.Int&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. |  [optional] |
| **count** | **kotlin.Int** |  |  [optional] |
| **version** | **kotlin.String** |  |  [optional] |


<a id="Event"></a>
## Enum: event
| Name | Value |
| ---- | ----- |
| event | hello, cloudevent |



