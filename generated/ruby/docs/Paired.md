# ChatPanel::Paired

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **token** | **String** | The gateway token. A secret — store it 0600 or in the platform keychain; never log it. |  |
| **bridge_token** | **String** | The bridge&#39;s token when this machine has one. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::Paired.new(
  ok: null,
  token: null,
  bridge_token: null
)
```

