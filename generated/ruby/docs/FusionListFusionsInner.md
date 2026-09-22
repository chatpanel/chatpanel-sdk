# ChatPanel::FusionListFusionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **capability** | **String** |  |  |
| **label** | **String** |  | [optional] |
| **members** | [**Array&lt;FusionListFusionsInnerMembersInner&gt;**](FusionListFusionsInnerMembersInner.md) |  |  |
| **derived** | **Boolean** | Read from the gateway’s state, not composed. | [optional] |
| **source** | **String** | For a derived one: ner, or the runtime service. | [optional] |
| **running** | **Boolean** |  | [optional] |
| **describe** | **String** | The fusion in a sentence. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::FusionListFusionsInner.new(
  id: null,
  kind: null,
  capability: null,
  label: null,
  members: null,
  derived: null,
  source: null,
  running: null,
  describe: null
)
```

