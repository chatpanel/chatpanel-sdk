# ChatPanel::EventsStreamEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | The SSE event name. |  |
| **cursor** | **Hash&lt;String, Integer&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. | [optional] |
| **count** | **Integer** |  | [optional] |
| **version** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::EventsStreamEvent.new(
  event: null,
  cursor: null,
  count: null,
  version: null
)
```

