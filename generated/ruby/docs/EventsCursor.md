# ChatPanel::EventsCursor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **cursor** | **Hash&lt;String, Integer&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. |  |
| **count** | **Integer** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::EventsCursor.new(
  ok: null,
  cursor: null,
  count: null
)
```

