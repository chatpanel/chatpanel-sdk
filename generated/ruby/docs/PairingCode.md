# ChatPanel::PairingCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **code** | **String** |  |  |
| **display** | **String** |  | [optional] |
| **expires_at** | **Integer** | ms since epoch |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PairingCode.new(
  ok: null,
  code: null,
  display: null,
  expires_at: null
)
```

