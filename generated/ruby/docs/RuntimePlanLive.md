# ChatPanel::RuntimePlanLive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fits** | **Boolean** |  | [optional] |
| **need_mb** | **Integer** |  | [optional] |
| **available_mb** | **Integer** |  | [optional] |
| **shortfall_mb** | **Integer** |  | [optional] |
| **fits_gpu_limit** | **Boolean** |  | [optional] |
| **gpu_wired_limit_mb** | **Integer** |  | [optional] |
| **close** | **Array&lt;String&gt;** | The apps to close to make room. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RuntimePlanLive.new(
  fits: null,
  need_mb: null,
  available_mb: null,
  shortfall_mb: null,
  fits_gpu_limit: null,
  gpu_wired_limit_mb: null,
  close: null
)
```

