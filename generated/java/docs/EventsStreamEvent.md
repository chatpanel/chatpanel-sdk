

# EventsStreamEvent


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**event** | [**EventEnum**](#EventEnum) | The SSE event name. |  |
|**cursor** | **Map&lt;String, Integer&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. |  [optional] |
|**count** | **Integer** |  |  [optional] |
|**version** | **String** |  |  [optional] |



## Enum: EventEnum

| Name | Value |
|---- | -----|
| HELLO | &quot;hello&quot; |
| CLOUDEVENT | &quot;cloudevent&quot; |



