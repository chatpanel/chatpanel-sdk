# ChatPanel::LinkStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  |  |
| **route** | **String** |  | [optional] |
| **relay** | **String** |  | [optional] |
| **tunnel** | **String** |  | [optional] |
| **problem** | **String** |  | [optional] |
| **routes** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  | [optional] |
| **setup** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **devices** | [**Array&lt;LinkDevice&gt;**](LinkDevice.md) |  |  |
| **pairing** | **Hash&lt;String, Object&gt;** | A phone code waiting to be scanned. | [optional] |
| **partner_pairing** | **Hash&lt;String, Object&gt;** | A partner code waiting to be used. | [optional] |
| **agent_sessions** | **Boolean** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::LinkStatus.new(
  enabled: null,
  route: null,
  relay: null,
  tunnel: null,
  problem: null,
  routes: null,
  setup: null,
  devices: null,
  pairing: null,
  partner_pairing: null,
  agent_sessions: null
)
```

