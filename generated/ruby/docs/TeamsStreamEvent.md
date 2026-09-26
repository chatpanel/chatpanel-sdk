# ChatPanel::TeamsStreamEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **at** | **Integer** | On &#x60;hello&#x60;. | [optional] |
| **id** | **String** | The run that changed. | [optional] |
| **removed** | **Boolean** | True when the run left the store. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::TeamsStreamEvent.new(
  type: null,
  at: null,
  id: null,
  removed: null
)
```

