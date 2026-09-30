# ChatPanel::RuntimePlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **service** | **String** |  | [optional] |
| **model** | **String** |  | [optional] |
| **need_mb** | **Integer** | Weights + KV cache + 10% headroom. | [optional] |
| **weights_mb** | **Integer** |  | [optional] |
| **kv_mb** | **Integer** | The KV cache for the context; null when the model&#39;s config.json is not on disk. | [optional] |
| **context** | **Integer** |  | [optional] |
| **context_counted** | **Boolean** |  | [optional] |
| **source** | **String** |  | [optional] |
| **fits** | **Boolean** |  | [optional] |
| **live** | [**RuntimePlanLive**](RuntimePlanLive.md) |  | [optional] |
| **advice** | **String** | One sentence for the person. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RuntimePlan.new(
  ok: null,
  service: null,
  model: null,
  need_mb: null,
  weights_mb: null,
  kv_mb: null,
  context: null,
  context_counted: null,
  source: null,
  fits: null,
  live: null,
  advice: null
)
```

