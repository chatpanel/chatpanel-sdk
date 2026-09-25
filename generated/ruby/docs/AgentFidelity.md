# ChatPanel::AgentFidelity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dialect** | **String** |  | [optional] |
| **lossless** | **Boolean** |  | [optional] |
| **carried** | **Array&lt;String&gt;** |  | [optional] |
| **dropped** | [**Array&lt;AgentFidelityDroppedInner&gt;**](AgentFidelityDroppedInner.md) |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AgentFidelity.new(
  dialect: null,
  lossless: null,
  carried: null,
  dropped: null
)
```

