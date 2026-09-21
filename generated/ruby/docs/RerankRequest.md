# ChatPanel::RerankRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** |  |  |
| **documents** | **Array&lt;String&gt;** |  |  |
| **top_n** | **Integer** | Return only the best this many. | [optional] |
| **model** | **String** | The model this provider serves; 404 otherwise. | [optional] |
| **budget_ms** | **Float** | Refused before dialling if the gateway&#39;s record predicts it cannot be met. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RerankRequest.new(
  query: null,
  documents: null,
  top_n: null,
  model: null,
  budget_ms: null
)
```

