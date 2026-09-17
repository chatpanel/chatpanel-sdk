# ChatPanel::RecallResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **size** | **Integer** |  | [optional] |
| **memories** | [**Array&lt;Memory&gt;**](Memory.md) |  |  |
| **block** | **String** | A prompt block carrying the recalled memories. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RecallResponse.new(
  ok: null,
  size: null,
  memories: null,
  block: null
)
```

