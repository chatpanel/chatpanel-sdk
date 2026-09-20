# ChatPanel::WebSearchResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rank** | **Integer** |  |  |
| **url** | **String** |  |  |
| **title** | **String** |  |  |
| **snippet** | **String** |  |  |
| **engine** | **String** | The engine that produced it (SearXNG: the first of &#x60;engines&#x60;; serp: the results page asked). | [optional] |
| **engines** | **Array&lt;String&gt;** | SearXNG: every engine that returned it. | [optional] |
| **score** | **Float** | SearXNG&#39;s fused score. | [optional] |
| **published_date** | **String** |  | [optional] |
| **read** | [**ReadResponse**](ReadResponse.md) | Present for the top &#x60;read&#x60; results. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::WebSearchResult.new(
  rank: null,
  url: null,
  title: null,
  snippet: null,
  engine: null,
  engines: null,
  score: null,
  published_date: null,
  read: null
)
```

