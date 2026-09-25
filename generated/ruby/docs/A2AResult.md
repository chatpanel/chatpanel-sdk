# ChatPanel::A2AResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  | [optional] |
| **kind** | **String** | A2A returns one or the other; an agent answering at once creates no task. | [optional] |
| **task** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **message** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **text** | **String** | The answer as text — artifacts first, then what the agent actually said. | [optional] |
| **done** | **Boolean** |  | [optional] |
| **needs** | **String** | &#x60;answer&#x60; for TASK_STATE_INPUT_REQUIRED, &#x60;approval&#x60; for TASK_STATE_AUTH_REQUIRED, null otherwise. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::A2AResult.new(
  ok: null,
  kind: null,
  task: null,
  message: null,
  text: null,
  done: null,
  needs: null
)
```

