# ChatPanel::LinkRouteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **route** | **String** |  |  |
| **url** | **String** | The relay (relay) or this computer&#39;s tunnel address (tailscale | [optional] |
| **fallback** | **Boolean** | A tunnel route keeps ChatPanel Link as the phones&#39; fallback unless false. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::LinkRouteRequest.new(
  route: null,
  url: null,
  fallback: null
)
```

