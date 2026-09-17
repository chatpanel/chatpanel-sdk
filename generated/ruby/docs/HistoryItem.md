# ChatPanel::HistoryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **title** | **String** |  | [optional] |
| **type** | [**RecordType**](RecordType.md) |  | [optional] |
| **date** | **Integer** |  | [optional] |
| **chars** | **Integer** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::HistoryItem.new(
  id: null,
  title: null,
  type: null,
  date: null,
  chars: null
)
```

