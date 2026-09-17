# ChatPanel::PrefsEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **revision** | **Integer** |  | [optional] |
| **stamps** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **applied** | **Array&lt;String&gt;** | The sections the other client wrote. | [optional] |
| **by** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PrefsEvent.new(
  type: null,
  revision: null,
  stamps: null,
  applied: null,
  by: null
)
```

