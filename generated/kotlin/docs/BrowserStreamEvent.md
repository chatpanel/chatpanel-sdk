
# BrowserStreamEvent

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **event** | [**inline**](#Event) |  |  |
| **session** | **kotlin.String** | On &#x60;hello&#x60;. |  [optional] |
| **version** | **kotlin.String** | On &#x60;hello&#x60; — the gateway&#39;s. |  [optional] |
| **id** | **kotlin.String** | On &#x60;call&#x60; and &#x60;cancel&#x60;. |  [optional] |
| **action** | **kotlin.String** |  |  [optional] |
| **args** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) |  |  [optional] |
| **task** | **kotlin.String** |  |  [optional] |


<a id="Event"></a>
## Enum: event
| Name | Value |
| ---- | ----- |
| event | hello, call, cancel, replaced |



