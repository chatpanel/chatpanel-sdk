# ChatPanel::EventsStatsStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | **Integer** |  | [optional] |
| **bytes** | **Integer** |  | [optional] |
| **avg_bytes** | **Integer** |  | [optional] |
| **span** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **per_day** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **hosts** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **types** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **turns** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **refs** | **Hash&lt;String, Object&gt;** | &#x60;total&#x60;, &#x60;distinct&#x60;, &#x60;dedupHitRate&#x60; (percent). | [optional] |
| **tool_calls** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::EventsStatsStats.new(
  events: null,
  bytes: null,
  avg_bytes: null,
  span: null,
  per_day: null,
  hosts: null,
  types: null,
  turns: null,
  refs: null,
  tool_calls: null
)
```

