# ChatPanel::ThreadsSendRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | The chat to ask — a record id, chat:… |  |
| **message** | **String** |  |  |
| **from** | [**ThreadsSendRequestFrom**](ThreadsSendRequestFrom.md) |  | [optional] |
| **dry_run** | **Boolean** | Only which chat and model — nothing is run. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ThreadsSendRequest.new(
  to: null,
  message: null,
  from: null,
  dry_run: null
)
```

