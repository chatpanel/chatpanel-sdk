# ChatPanel::WebSearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;WebSearchResult&gt;**](WebSearchResult.md) |  |  |
| **answers** | **Array&lt;String&gt;** | SearXNG&#39;s direct answers, when it had any. | [optional] |
| **suggestions** | **Array&lt;String&gt;** |  | [optional] |
| **engines** | **Array&lt;String&gt;** | What was actually asked. | [optional] |
| **unresponsive** | **Array&lt;String&gt;** | SearXNG engines that did not answer. | [optional] |
| **redacted** | **Boolean** | Layer-1 redaction removed something from the query. | [optional] |
| **query** | **String** | The query as sent, when &#x60;redacted&#x60;. | [optional] |
| **provider** | **String** |  |  |
| **ms** | **Float** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::WebSearchResponse.new(
  results: null,
  answers: null,
  suggestions: null,
  engines: null,
  unresponsive: null,
  redacted: null,
  query: null,
  provider: null,
  ms: null
)
```

