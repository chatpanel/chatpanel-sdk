# ChatPanel::WhoAmI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **trust** | **String** |  |  |
| **paired** | **Boolean** | True when this caller may reach token-gated routes. |  |
| **version** | **String** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::WhoAmI.new(
  ok: null,
  trust: null,
  paired: null,
  version: null
)
```

