# ChatPanel::KbAddResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **added** | [**Array&lt;KbAddResponseAddedInner&gt;**](KbAddResponseAddedInner.md) |  |  |
| **skipped** | [**Array&lt;KbAddResponseSkippedInner&gt;**](KbAddResponseSkippedInner.md) |  |  |
| **embedded** | **Integer** | Passages given a vector in this call. | [optional] |
| **kb** | [**KbStatus**](KbStatus.md) |  |  |
| **ms** | **Float** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbAddResponse.new(
  added: null,
  skipped: null,
  embedded: null,
  kb: null,
  ms: null
)
```

