# ChatPanel::DecideQuestion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **instructions** | **String** |  |  |
| **options** | [**Array&lt;DecideQuestionOptionsInner&gt;**](DecideQuestionOptionsInner.md) | choice: the values to pick from; score: the rubric, in order. A noul has none. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::DecideQuestion.new(
  type: null,
  instructions: null,
  options: null
)
```

