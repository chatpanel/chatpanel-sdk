# ChatPanel::SearchHit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **score** | **Float** |  | [optional] |
| **title** | **String** |  | [optional] |
| **type** | [**RecordType**](RecordType.md) |  | [optional] |
| **date** | **Integer** |  | [optional] |
| **snippet** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::SearchHit.new(
  id: null,
  score: null,
  title: null,
  type: null,
  date: null,
  snippet: null
)
```

