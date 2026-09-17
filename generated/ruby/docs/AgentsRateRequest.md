# ChatPanel::AgentsRateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **Float** |  |  |
| **note** | **String** |  | [optional] |
| **about** | **String** |  | [optional] |
| **by** | **String** |  | [optional] |
| **run_id** | **String** |  | [optional] |
| **task_id** | **String** |  | [optional] |
| **job_id** | **String** |  | [optional] |
| **refs** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AgentsRateRequest.new(
  score: null,
  note: null,
  about: null,
  by: null,
  run_id: null,
  task_id: null,
  job_id: null,
  refs: null
)
```

