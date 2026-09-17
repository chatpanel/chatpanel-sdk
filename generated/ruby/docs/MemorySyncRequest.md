# ChatPanel::MemorySyncRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upserts** | [**Array&lt;Memory&gt;**](Memory.md) |  | [optional] |
| **removes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::MemorySyncRequest.new(
  upserts: null,
  removes: null
)
```

