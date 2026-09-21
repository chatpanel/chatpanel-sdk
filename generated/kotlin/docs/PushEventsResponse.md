
# PushEventsResponse

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  |
| **appended** | **kotlin.Int** |  |  |
| **duplicates** | **kotlin.Int** | Events already held — a retry&#39;s share. |  |
| **rejected** | [**kotlin.collections.List&lt;PushEventsResponseRejectedInner&gt;**](PushEventsResponseRejectedInner.md) |  |  |
| **cursor** | **kotlin.collections.Map&lt;kotlin.String, kotlin.Int&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. |  |



