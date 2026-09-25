# ChatPanel::AgentsListDefs200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agents** | [**Array&lt;AgentDef&gt;**](AgentDef.md) |  |  |
| **quarantined** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Definitions the scanner refused. | [optional] |
| **problems** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Files that parsed as a definition and could not be made one. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AgentsListDefs200Response.new(
  agents: null,
  quarantined: null,
  problems: null
)
```

