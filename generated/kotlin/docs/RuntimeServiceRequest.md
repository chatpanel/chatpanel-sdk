
# RuntimeServiceRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **action** | [**inline**](#Action) |  |  [optional] |
| **model** | **kotlin.String** | With &#x60;action: model&#x60; — a catalogue id or a Hugging Face owner/name. |  [optional] |
| **force** | **kotlin.Boolean** | With &#x60;action: start&#x60; (gateway 0.74+) — start a native model past the live-memory check (&#x60;GET /v1/runtime/plan&#x60;). |  [optional] |


<a id="Action"></a>
## Enum: action
| Name | Value |
| ---- | ----- |
| action | start, stop, model |



