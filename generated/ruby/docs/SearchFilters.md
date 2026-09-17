# ChatPanel::SearchFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**RecordType**](RecordType.md) |  | [optional] |
| **since** | **Integer** | ms since epoch | [optional] |
| **before** | **Integer** | ms since epoch | [optional] |
| **limit** | **Integer** |  | [optional][default to 10] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::SearchFilters.new(
  type: null,
  since: null,
  before: null,
  limit: null
)
```

