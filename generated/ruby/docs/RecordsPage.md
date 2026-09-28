# ChatPanel::RecordsPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **records** | **Array&lt;Hash&gt;** | Whole records; a tombstone carries &#x60;deletedAt&#x60;. |  |
| **_next** | **String** | The cursor for the next page — pass it as &#x60;cursor&#x60; (or, paging by revision, as &#x60;after_rev&#x60;); absent on the last page. | [optional] |
| **size** | **Integer** |  | [optional] |
| **newest** | **Integer** |  | [optional] |
| **rev** | **Integer** | The newest revision (gateway 0.63.0+). Each record carries its own &#x60;rev&#x60; too. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RecordsPage.new(
  ok: null,
  records: null,
  _next: null,
  size: null,
  newest: null,
  rev: null
)
```

