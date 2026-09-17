

# ChatMessage


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**role** | [**RoleEnum**](#RoleEnum) |  |  |
|**content** | [**ChatMessageContent**](ChatMessageContent.md) |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**toolCalls** | **List&lt;Map&lt;String, Object&gt;&gt;** |  |  [optional] |
|**toolCallId** | **String** |  |  [optional] |



## Enum: RoleEnum

| Name | Value |
|---- | -----|
| SYSTEM | &quot;system&quot; |
| USER | &quot;user&quot; |
| ASSISTANT | &quot;assistant&quot; |
| TOOL | &quot;tool&quot; |



