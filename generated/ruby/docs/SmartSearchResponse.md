# ChatPanel::SmartSearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **size** | **Integer** |  | [optional] |
| **newest** | **Integer** |  | [optional] |
| **results** | [**Array&lt;SearchHit&gt;**](SearchHit.md) |  |  |
| **queries** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::SmartSearchResponse.new(
  ok: null,
  size: null,
  newest: null,
  results: null,
  queries: null
)
```

