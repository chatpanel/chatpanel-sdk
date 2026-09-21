# ChatPanel::EventsStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **stats** | [**EventsStatsStats**](EventsStatsStats.md) |  |  |
| **year** | **Hash&lt;String, Object&gt;** | &#x60;eventsPerYear&#x60;, &#x60;bytesPerYear&#x60;, &#x60;daysToCap&#x60; at the observed rate; null before there is a span. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::EventsStats.new(
  ok: null,
  stats: null,
  year: null
)
```

