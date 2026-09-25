# ChatPanel::AgentCardSupportedInterfacesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional] |
| **protocol_binding** | **String** | JSONRPC, GRPC, HTTP+JSON — an open string, so an unknown binding is carried. | [optional] |
| **protocol_version** | **String** |  | [optional] |
| **tenant** | **String** | Echoed on every request to this interface when set. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AgentCardSupportedInterfacesInner.new(
  url: null,
  protocol_binding: null,
  protocol_version: null,
  tenant: null
)
```

