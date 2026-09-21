# ChatPanel::DecideRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | **String** | The text judged. |  |
| **questions** | [**Hash&lt;String, DecideQuestion&gt;**](DecideQuestion.md) | Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*). |  |
| **model** | **String** | The model this provider serves; 404 otherwise. | [optional] |
| **budget_ms** | **Float** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::DecideRequest.new(
  state: null,
  questions: null,
  model: null,
  budget_ms: null
)
```

