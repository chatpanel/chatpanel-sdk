# ChatPanel::A2ASendRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  | [optional] |
| **card** | [**AgentCard**](AgentCard.md) |  | [optional] |
| **text** | **String** | Shorthand for a one-part text message. | [optional] |
| **message** | **Hash&lt;String, Object&gt;** | A full A2A Message. | [optional] |
| **context_id** | **String** | Groups related interactions. | [optional] |
| **task_id** | **String** | Continues an existing task — how an input or auth stop is answered. | [optional] |
| **return_immediately** | **Boolean** | Do not wait for a terminal or interrupted state. | [optional] |
| **auth** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::A2ASendRequest.new(
  url: null,
  card: null,
  text: null,
  message: null,
  context_id: null,
  task_id: null,
  return_immediately: null,
  auth: null
)
```

