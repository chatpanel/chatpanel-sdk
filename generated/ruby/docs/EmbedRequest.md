# ChatPanel::EmbedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **input** | [**EmbedRequestInput**](EmbedRequestInput.md) |  |  |
| **model** | **String** | The model &#x60;GET /v1/capabilities&#x60; lists for &#x60;embed&#x60;; 404 otherwise. | [optional] |
| **kind** | **String** | What the texts are — a model with instruction prefixes (E5) prefixes each accordingly. | [optional][default to &#39;passage&#39;] |
| **budget_ms** | **Float** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::EmbedRequest.new(
  input: null,
  model: null,
  kind: null,
  budget_ms: null
)
```

