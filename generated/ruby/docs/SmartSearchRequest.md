# ChatPanel::SmartSearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**RecordType**](RecordType.md) |  | [optional] |
| **since** | **Integer** | ms since epoch | [optional] |
| **before** | **Integer** | ms since epoch | [optional] |
| **limit** | **Integer** |  | [optional][default to 10] |
| **question** | **String** | The natural-language question. |  |
| **queries** | **Array&lt;String&gt;** | 2–4 keyword phrasings of your own; they lead. | [optional] |
| **max_queries** | **Integer** |  | [optional][default to 4] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::SmartSearchRequest.new(
  type: null,
  since: null,
  before: null,
  limit: null,
  question: null,
  queries: null,
  max_queries: null
)
```

