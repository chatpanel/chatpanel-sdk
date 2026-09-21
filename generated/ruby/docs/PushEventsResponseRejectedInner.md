# ChatPanel::PushEventsResponseRejectedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **code** | **String** | &#x60;CLOUDEVENT&#x60; (envelope), &#x60;SEQ&#x60; (moved backwards), or event.js&#39;s &#x60;SHAPE&#x60; / &#x60;TYPE&#x60; / &#x60;PAYLOAD&#x60; / &#x60;VERSION&#x60;. |  |
| **message** | **String** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PushEventsResponseRejectedInner.new(
  id: null,
  code: null,
  message: null
)
```

