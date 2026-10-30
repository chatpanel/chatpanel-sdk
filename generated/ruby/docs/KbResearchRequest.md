# ChatPanel::KbResearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question** | **String** |  |  |
| **answer** | **String** | The person&#39;s answer to a previous &#x60;ask&#x60; (a document title, or &#x60;all&#x60;). | [optional] |
| **ask** | **Boolean** | &#x60;false&#x60;: never pause; search every document. | [optional][default to true] |
| **model** | **String** | A model (from &#x60;GET /v1/models&#x60;) for the evidence check; token-gated. | [optional] |
| **previous** | **Hash&lt;String, Object&gt;** | The previous response&#39;s &#x60;frame&#x60;, for a follow-up. | [optional] |
| **docs** | **Array&lt;String&gt;** | Only these documents. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbResearchRequest.new(
  question: null,
  answer: null,
  ask: null,
  model: null,
  previous: null,
  docs: null
)
```

