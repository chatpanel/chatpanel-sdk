# ChatPanel::CapabilityStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calls** | **Integer** |  |  |
| **p50_ms** | **Float** |  | [optional] |
| **p95_ms** | **Float** |  | [optional] |
| **max_ms** | **Float** |  | [optional] |
| **last_ms** | **Float** |  | [optional] |
| **chars_per_sec** | **Float** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::CapabilityStats.new(
  calls: null,
  p50_ms: null,
  p95_ms: null,
  max_ms: null,
  last_ms: null,
  chars_per_sec: null
)
```

