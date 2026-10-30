# ChatPanel::KbNoteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  |  |
| **cites** | **Array&lt;String&gt;** |  | [optional] |
| **status** | **String** | &#x60;accepted&#x60; is honoured from a caller with the token only. | [optional] |
| **by** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbNoteRequest.new(
  text: null,
  cites: null,
  status: null,
  by: null
)
```

