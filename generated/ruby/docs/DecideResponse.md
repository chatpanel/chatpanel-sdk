# ChatPanel::DecideResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **answers** | [**Hash&lt;String, DecideAnswer&gt;**](DecideAnswer.md) | One per question asked, under the same key. |  |
| **model** | **String** |  |  |
| **ms** | **Float** |  |  |
| **calibrated** | **Boolean** | Whether &#x60;p&#x60; is a calibrated probability. false for a zero-shot NLI concentration. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::DecideResponse.new(
  answers: null,
  model: null,
  ms: null,
  calibrated: null
)
```

