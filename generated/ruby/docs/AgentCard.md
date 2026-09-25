# ChatPanel::AgentCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **version** | **String** |  |  |
| **supported_interfaces** | [**Array&lt;AgentCardSupportedInterfacesInner&gt;**](AgentCardSupportedInterfacesInner.md) |  | [optional] |
| **provider** | [**AgentCardProvider**](AgentCardProvider.md) |  | [optional] |
| **capabilities** | [**AgentCardCapabilities**](AgentCardCapabilities.md) |  | [optional] |
| **default_input_modes** | **Array&lt;String&gt;** |  | [optional] |
| **default_output_modes** | **Array&lt;String&gt;** |  | [optional] |
| **skills** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  | [optional] |
| **icon_url** | **String** |  | [optional] |
| **documentation_url** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AgentCard.new(
  name: null,
  description: null,
  version: null,
  supported_interfaces: null,
  provider: null,
  capabilities: null,
  default_input_modes: null,
  default_output_modes: null,
  skills: null,
  icon_url: null,
  documentation_url: null
)
```

