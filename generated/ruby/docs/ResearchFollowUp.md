# ChatPanel::ResearchFollowUp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan** | [**ResearchPlan**](ResearchPlan.md) |  |  |
| **top** | **String** | The record the answer pointed at. | [optional] |
| **answer** | **String** | What the answer said (a date in it bounds \&quot;even later\&quot;). | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ResearchFollowUp.new(
  plan: null,
  top: null,
  answer: null
)
```

