# ChatPanel::RerankResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;RerankResult&gt;**](RerankResult.md) | Distinct indexes, best first; at most top_n. |  |
| **model** | **String** |  |  |
| **ms** | **Float** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RerankResponse.new(
  results: null,
  model: null,
  ms: null
)
```

