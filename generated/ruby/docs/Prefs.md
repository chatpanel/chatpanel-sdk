# ChatPanel::Prefs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **revision** | **Integer** |  |  |
| **sections** | [**Hash&lt;String, PrefSection&gt;**](PrefSection.md) |  | [optional] |
| **stamps** | **Hash&lt;String, Integer&gt;** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::Prefs.new(
  ok: null,
  revision: null,
  sections: null,
  stamps: null
)
```

