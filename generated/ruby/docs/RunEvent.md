# ChatPanel::RunEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **seq** | **Integer** |  | [optional] |
| **type** | **String** |  |  |
| **at** | **Integer** |  | [optional] |
| **payload** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RunEvent.new(
  seq: null,
  type: null,
  at: null,
  payload: null
)
```

