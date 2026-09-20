# ChatPanel::WebSearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 8] |
| **lang** | **String** | en or en-US; honoured by SearXNG. | [optional] |
| **site** | **String** | A hostname — the site: operator. | [optional] |
| **freshness** | **String** | Honoured by SearXNG (time_range); week maps to month. | [optional] |
| **read** | **Integer** | Read the top N results in this request. | [optional][default to 0] |
| **provider** | **String** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;search&#x60;; 404 otherwise. | [optional] |
| **budget_ms** | **Float** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::WebSearchRequest.new(
  q: null,
  limit: null,
  lang: null,
  site: null,
  freshness: null,
  read: null,
  provider: null,
  budget_ms: null
)
```

