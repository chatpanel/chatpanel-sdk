

# PushEventsResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**appended** | **Integer** |  |  |
|**duplicates** | **Integer** | Events already held — a retry&#39;s share. |  |
|**rejected** | [**List&lt;PushEventsResponseRejectedInner&gt;**](PushEventsResponseRejectedInner.md) |  |  |
|**cursor** | **Map&lt;String, Integer&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. |  |



