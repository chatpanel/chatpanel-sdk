
# CloudEvent

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **specversion** | [**inline**](#Specversion) |  |  |
| **id** | **kotlin.String** |  |  |
| **source** | **kotlin.String** | &#x60;urn:chatpanel:host:&lt;host&gt;&#x60; |  |
| **type** | **kotlin.String** | &#x60;net.chatpanel.&lt;family&gt;.&lt;kind&gt;&#x60; |  |
| **time** | [**java.time.OffsetDateTime**](java.time.OffsetDateTime.md) |  |  |
| **seq** | **kotlin.Int** |  |  |
| **host** | **kotlin.String** |  |  |
| **chatpanelv** | **kotlin.Int** |  |  |
| **datacontenttype** | **kotlin.String** |  |  [optional] |
| **causes** | **kotlin.String** |  |  [optional] |
| **&#x60;data&#x60;** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |


<a id="Specversion"></a>
## Enum: specversion
| Name | Value |
| ---- | ----- |
| specversion | 1.0 |



