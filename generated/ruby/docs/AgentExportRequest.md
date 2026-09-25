# ChatPanel::AgentExportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | [**AgentDef**](AgentDef.md) |  |  |
| **to** | **String** | The dialect to write. |  |
| **overwrite** | **Boolean** | Only ever after a plan reported &#x60;theirs&#x60; and a person agreed. | [optional][default to false] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AgentExportRequest.new(
  agent: null,
  to: null,
  overwrite: null
)
```

