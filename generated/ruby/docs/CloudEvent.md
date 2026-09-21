# ChatPanel::CloudEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **specversion** | **String** |  |  |
| **id** | **String** |  |  |
| **source** | **String** | &#x60;urn:chatpanel:host:&lt;host&gt;&#x60; |  |
| **type** | **String** | &#x60;net.chatpanel.&lt;family&gt;.&lt;kind&gt;&#x60; |  |
| **time** | **Time** |  |  |
| **datacontenttype** | **String** |  | [optional] |
| **seq** | **Integer** |  |  |
| **host** | **String** |  |  |
| **causes** | **String** |  | [optional] |
| **chatpanelv** | **Integer** |  |  |
| **data** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::CloudEvent.new(
  specversion: null,
  id: null,
  source: null,
  type: null,
  time: null,
  datacontenttype: null,
  seq: null,
  host: null,
  causes: null,
  chatpanelv: null,
  data: null
)
```

