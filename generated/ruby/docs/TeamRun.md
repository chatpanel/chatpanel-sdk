# ChatPanel::TeamRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **client** | **String** |  | [optional] |
| **team** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **status** | **String** |  | [optional] |
| **events** | [**Array&lt;RunEvent&gt;**](RunEvent.md) |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::TeamRun.new(
  id: null,
  client: null,
  team: null,
  status: null,
  events: null
)
```

