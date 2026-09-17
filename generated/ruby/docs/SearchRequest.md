# ChatPanel::SearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**RecordType**](RecordType.md) |  | [optional] |
| **since** | **Integer** | ms since epoch | [optional] |
| **before** | **Integer** | ms since epoch | [optional] |
| **limit** | **Integer** |  | [optional][default to 10] |
| **query** | **String** |  |  |
| **offset** | **Integer** |  | [optional][default to 0] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::SearchRequest.new(
  type: null,
  since: null,
  before: null,
  limit: null,
  query: null,
  offset: null
)
```

