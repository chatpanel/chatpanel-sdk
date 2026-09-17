# ChatPanel::TeamsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** |  |  |
| **text** | **String** |  |  |
| **kind** | **String** |  | [optional] |
| **reply_to** | **String** |  | [optional] |
| **by** | **String** |  | [optional][default to &#39;person&#39;] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::TeamsPostRequest.new(
  thread_id: null,
  text: null,
  kind: null,
  reply_to: null,
  by: null
)
```

