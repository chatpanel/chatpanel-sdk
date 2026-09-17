# ChatPanel::SearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **size** | **Integer** |  | [optional] |
| **newest** | **Integer** |  | [optional] |
| **results** | [**Array&lt;SearchHit&gt;**](SearchHit.md) |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::SearchResponse.new(
  ok: null,
  size: null,
  newest: null,
  results: null
)
```

