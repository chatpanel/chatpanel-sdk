# ChatPanel::ReadRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | &#x60;robots&#x60; and &#x60;tdm&#x60; come only from a hosted (crawler) provider; on the user&#39;s machine the reader is a user agent. |  |
| **detail** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ReadRestriction.new(
  reason: null,
  detail: null
)
```

