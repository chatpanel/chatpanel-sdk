# ChatPanel::PrefsWriteResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **revision** | **Integer** |  |  |
| **applied** | **Array&lt;String&gt;** |  | [optional] |
| **kept** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PrefsWriteResult.new(
  ok: null,
  revision: null,
  applied: null,
  kept: null
)
```

