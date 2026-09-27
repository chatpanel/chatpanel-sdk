

# BrowserStreamEvent


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**event** | [**EventEnum**](#EventEnum) |  |  |
|**session** | **String** | On &#x60;hello&#x60;. |  [optional] |
|**version** | **String** | On &#x60;hello&#x60; — the gateway&#39;s. |  [optional] |
|**id** | **String** | On &#x60;call&#x60; and &#x60;cancel&#x60;. |  [optional] |
|**action** | **String** |  |  [optional] |
|**args** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**task** | **String** |  |  [optional] |



## Enum: EventEnum

| Name | Value |
|---- | -----|
| HELLO | &quot;hello&quot; |
| CALL | &quot;call&quot; |
| CANCEL | &quot;cancel&quot; |
| REPLACED | &quot;replaced&quot; |



