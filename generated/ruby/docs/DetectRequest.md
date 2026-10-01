# ChatPanel::DetectRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  |  |
| **model** | **String** | A model this provider lists; 404 otherwise. | [optional] |
| **labels** | **Array&lt;String&gt;** | Keep only these of the model&#39;s labels. | [optional] |
| **budget_ms** | **Float** | Refused before running if the provider&#39;s record predicts it cannot be met. | [optional] |
| **strict** | **Boolean** | Return every span the provider finds, second-guessing none (redaction strictness &#39;strict&#39;). A provider that does not filter ignores it. Since gateway 0.76.0. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::DetectRequest.new(
  text: null,
  model: null,
  labels: null,
  budget_ms: null,
  strict: null
)
```

