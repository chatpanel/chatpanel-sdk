

# RuntimeServiceRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**action** | [**ActionEnum**](#ActionEnum) |  |  [optional] |
|**model** | **String** | With &#x60;action: model&#x60; — a catalogue id or a Hugging Face owner/name. |  [optional] |
|**force** | **Boolean** | With &#x60;action: start&#x60; (gateway 0.74+) — start a native model past the live-memory check (&#x60;GET /v1/runtime/plan&#x60;). |  [optional] |



## Enum: ActionEnum

| Name | Value |
|---- | -----|
| START | &quot;start&quot; |
| STOP | &quot;stop&quot; |
| MODEL | &quot;model&quot; |



