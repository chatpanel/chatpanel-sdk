# ChatPanel::ChatCompletionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | **String** | A model id from &#x60;GET /v1/models&#x60;; &#x60;claude/opus&#x60; names an agent and its model. |  |
| **messages** | [**Array&lt;ChatMessage&gt;**](ChatMessage.md) |  |  |
| **stream** | **Boolean** |  | [optional] |
| **stream_options** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **tools** | **Array&lt;Hash&gt;** |  | [optional] |
| **tool_choice** | **Object** |  | [optional] |
| **temperature** | **Float** |  | [optional] |
| **max_tokens** | **Integer** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ChatCompletionRequest.new(
  model: null,
  messages: null,
  stream: null,
  stream_options: null,
  tools: null,
  tool_choice: null,
  temperature: null,
  max_tokens: null
)
```

