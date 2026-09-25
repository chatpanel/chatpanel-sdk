# ChatPanel::A2aTaskRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **url** | **String** |  | [optional] |
| **card** | [**AgentCard**](AgentCard.md) |  | [optional] |
| **cancel** | **Boolean** | Cancel instead of polling. | [optional] |
| **auth** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::A2aTaskRequest.new(
  id: null,
  url: null,
  card: null,
  cancel: null,
  auth: null
)
```

