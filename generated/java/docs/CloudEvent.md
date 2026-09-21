

# CloudEvent

One durable event in the CloudEvents 1.0 envelope. `seq`, `host`, `chatpanelv` are ChatPanel's extension attributes (the per-host order, the producer, the log schema version); `causes` is the comma-joined ids this event follows; `data` is the payload — refs and counts, never content.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**specversion** | [**SpecversionEnum**](#SpecversionEnum) |  |  |
|**id** | **String** |  |  |
|**source** | **String** | &#x60;urn:chatpanel:host:&lt;host&gt;&#x60; |  |
|**type** | **String** | &#x60;net.chatpanel.&lt;family&gt;.&lt;kind&gt;&#x60; |  |
|**time** | **OffsetDateTime** |  |  |
|**datacontenttype** | **String** |  |  [optional] |
|**seq** | **Integer** |  |  |
|**host** | **String** |  |  |
|**causes** | **String** |  |  [optional] |
|**chatpanelv** | **Integer** |  |  |
|**data** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |



## Enum: SpecversionEnum

| Name | Value |
|---- | -----|
| _1_0 | &quot;1.0&quot; |



