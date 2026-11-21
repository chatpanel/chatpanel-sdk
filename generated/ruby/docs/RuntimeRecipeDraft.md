# ChatPanel::RuntimeRecipeDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** |  |  |
| **size** | **Integer** |  | [optional] |
| **spec** | **String** | llama-server --spec-type: draft-dspark, draft-mtp, draft-eagle3, draft-dflash or draft-simple. |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RuntimeRecipeDraft.new(
  path: null,
  size: null,
  spec: null
)
```

