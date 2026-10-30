# ChatPanel::EventsDeleted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **deleted** | **Integer** | How many events went. |  |
| **host** | **String** |  | [optional] |
| **all** | **Boolean** |  | [optional] |
| **cursor** | **Hash&lt;String, Integer&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::EventsDeleted.new(
  ok: null,
  deleted: null,
  host: null,
  all: null,
  cursor: null
)
```

