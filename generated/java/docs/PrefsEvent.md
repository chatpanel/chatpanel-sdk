

# PrefsEvent


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**type** | [**TypeEnum**](#TypeEnum) |  |  |
|**revision** | **Integer** |  |  [optional] |
|**stamps** | **Map&lt;String, Long&gt;** |  |  [optional] |
|**applied** | **List&lt;String&gt;** | The sections the other client wrote. |  [optional] |
|**by** | **String** |  |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| HELLO | &quot;hello&quot; |
| CHANGED | &quot;changed&quot; |



