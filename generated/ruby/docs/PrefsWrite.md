# ChatPanel::PrefsWrite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sections** | [**Hash&lt;String, PrefSection&gt;**](PrefSection.md) |  |  |
| **by** | **String** | Which client is writing. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PrefsWrite.new(
  sections: null,
  by: null
)
```

