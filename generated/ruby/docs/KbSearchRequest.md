# ChatPanel::KbSearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 10] |
| **hops** | **Integer** | Graph expansion of the best hits; 0 &#x3D; off. | [optional][default to 1] |
| **docs** | **Array&lt;String&gt;** | Only these documents. | [optional] |
| **queries** | **Array&lt;String&gt;** | The caller&#39;s own phrasings, searched too. | [optional] |
| **rerank** | **Boolean** | &#x60;false&#x60;: skip the reranker. | [optional][default to true] |
| **budget_ms** | **Float** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbSearchRequest.new(
  query: null,
  limit: null,
  hops: null,
  docs: null,
  queries: null,
  rerank: null,
  budget_ms: null
)
```

