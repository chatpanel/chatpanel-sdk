# ChatPanel::LinkDevice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **kind** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **paired_at** | **Integer** |  | [optional] |
| **last_seen** | **Integer** |  | [optional] |
| **online** | **Boolean** |  | [optional] |
| **via** | **String** | tunnel or relay, while online. | [optional] |
| **partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **route** | **String** | A partner&#39;s route | [optional] |
| **host** | **String** |  | [optional] |
| **route_closed** | **Boolean** | A tunnel partner whose door shut when the gateway&#39;s route moved — pair it again to move it. | [optional] |
| **folder** | **String** | Where a partner&#39;s agents work (0.90.0+, with agents). | [optional] |
| **stale_relay** | **String** |  | [optional] |
| **tunnel_needs_relink** | **Boolean** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::LinkDevice.new(
  id: null,
  kind: null,
  name: null,
  paired_at: null,
  last_seen: null,
  online: null,
  via: null,
  partner: null,
  scopes: null,
  route: null,
  host: null,
  route_closed: null,
  folder: null,
  stale_relay: null,
  tunnel_needs_relink: null
)
```

