# ChatPanel::DecideAnswer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Object** | choice: the option picked; score: a number on the rubric; noul: a boolean. |  |
| **p** | **Float** | The probability of &#x60;value&#x60; — read it as one only when the response says &#x60;calibrated&#x60;. |  |
| **options** | [**Array&lt;DecideAnswerOption&gt;**](DecideAnswerOption.md) | The whole distribution. |  |
| **confidence** | **Float** | The provider&#39;s own confidence, when it reports one. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::DecideAnswer.new(
  value: null,
  p: null,
  options: null,
  confidence: null
)
```

