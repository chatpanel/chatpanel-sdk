# ChatPanel::TeamsAnswerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** |  |  |
| **text** | **String** |  |  |
| **by** | **String** |  | [optional][default to &#39;person&#39;] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::TeamsAnswerRequest.new(
  thread_id: null,
  text: null,
  by: null
)
```

