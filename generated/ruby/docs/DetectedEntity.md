# ChatPanel::DetectedEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** |  |  |
| **type** | **String** | The model&#39;s own label. |  |
| **start** | **Integer** | Character offset into the request text. |  |
| **_end** | **Integer** |  |  |
| **score** | **Float** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::DetectedEntity.new(
  value: null,
  type: null,
  start: null,
  _end: null,
  score: null
)
```

