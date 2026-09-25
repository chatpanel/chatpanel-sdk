# ChatPanel::A2aCard200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  | [optional] |
| **card** | [**AgentCard**](AgentCard.md) |  | [optional] |
| **fingerprint** | **String** | Changes when the card&#39;s content does. | [optional] |
| **fresh** | **Boolean** | false when the peer answered 304. | [optional] |
| **changed** | **Boolean** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::A2aCard200Response.new(
  ok: null,
  card: null,
  fingerprint: null,
  fresh: null,
  changed: null,
  url: null
)
```

