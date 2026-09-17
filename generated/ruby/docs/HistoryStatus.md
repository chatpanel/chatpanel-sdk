# ChatPanel::HistoryStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **size** | **Integer** |  |  |
| **newest** | **Integer** |  | [optional] |
| **bytes** | **Integer** |  | [optional] |
| **lossless** | [**HistoryStatusLossless**](HistoryStatusLossless.md) |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::HistoryStatus.new(
  ok: null,
  size: null,
  newest: null,
  bytes: null,
  lossless: null
)
```

