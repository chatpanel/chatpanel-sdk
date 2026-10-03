# ChatPanel::LinkPairRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | Absent is a phone. | [optional] |
| **name** | **String** | A phone pairing — what the phone calls this computer. | [optional] |
| **partner** | [**LinkPairRequestPartner**](LinkPairRequestPartner.md) |  | [optional] |
| **scopes** | [**LinkPairRequestScopes**](LinkPairRequestScopes.md) |  | [optional] |
| **route** | **String** | The partner&#39;s one path. Absent is the gateway&#39;s own route. | [optional] |
| **relay** | **String** | The https relay for &#x60;route relay&#x60;. | [optional] |
| **confirm** | **Boolean** | The owner saw the preview and said yes. Without it nothing is issued. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::LinkPairRequest.new(
  kind: null,
  name: null,
  partner: null,
  scopes: null,
  route: null,
  relay: null,
  confirm: null
)
```

