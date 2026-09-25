# ChatPanel::AgentExportPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **path** | **String** | The exact file that would be written. | [optional] |
| **text** | **String** | Its rendered contents. | [optional] |
| **exists** | **Boolean** |  | [optional] |
| **status** | **String** | &#x60;theirs&#x60; means ChatPanel did not write it, or it has been edited since. | [optional] |
| **fidelity** | [**AgentFidelity**](AgentFidelity.md) |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AgentExportPlan.new(
  to: null,
  label: null,
  path: null,
  text: null,
  exists: null,
  status: null,
  fidelity: null
)
```

