# ChatPanel::SearchTrailAsk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The engine or provider asked — &#x60;searxng&#x60;, &#x60;serp&#x60;, &#x60;duckduckgo&#x60;, &#x60;startpage&#x60;, &#x60;bing&#x60;, &#x60;api:&lt;id&gt;&#x60;. |  |
| **outcome** | **String** | &#x60;answered&#x60; · &#x60;empty&#x60; (answered, found nothing) · &#x60;refused&#x60; (a refusing status, a timeout or no answer at all). |  |
| **found** | **Integer** | How many results it returned. | [optional] |
| **status** | **Integer** | The HTTP status of a refusal (429, 403, …), when there was one. | [optional] |
| **timed_out** | **Boolean** | It did not answer within its share of the budget. | [optional] |
| **network** | **Boolean** | It failed at the network — no status at all. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::SearchTrailAsk.new(
  id: null,
  outcome: null,
  found: null,
  status: null,
  timed_out: null,
  network: null
)
```

