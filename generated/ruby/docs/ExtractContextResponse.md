# ChatPanel::ExtractContextResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachment** | [**ExtractContextResponseAttachment**](ExtractContextResponseAttachment.md) |  |  |
| **read** | [**Array&lt;ExtractContextResponseReadInner&gt;**](ExtractContextResponseReadInner.md) |  |  |
| **skipped** | [**Array&lt;ExtractContextResponseSkippedInner&gt;**](ExtractContextResponseSkippedInner.md) |  |  |
| **how** | **String** |  |  |
| **budget_chars** | **Integer** |  |  |
| **provider** | **String** | &#x60;chatpanel-extract&#x60;. |  |
| **ms** | **Float** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ExtractContextResponse.new(
  attachment: null,
  read: null,
  skipped: null,
  how: null,
  budget_chars: null,
  provider: null,
  ms: null
)
```

