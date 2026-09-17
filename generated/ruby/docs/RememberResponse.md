# ChatPanel::RememberResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **action** | **String** |  |  |
| **record** | [**Memory**](Memory.md) |  |  |
| **replaced** | [**Memory**](Memory.md) |  | [optional] |
| **size** | **Integer** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RememberResponse.new(
  ok: null,
  action: null,
  record: null,
  replaced: null,
  size: null
)
```

