# ChatPanel::HistoryStreamEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | The SSE event name. |  |
| **newest** | **Integer** |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **version** | **String** |  | [optional] |
| **ids** | **Array&lt;String&gt;** |  | [optional] |
| **at** | **Integer** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::HistoryStreamEvent.new(
  event: null,
  newest: null,
  size: null,
  version: null,
  ids: null,
  at: null
)
```

