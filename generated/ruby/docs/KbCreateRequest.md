# ChatPanel::KbCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Chosen by the caller; made up when absent. | [optional] |
| **name** | **String** |  | [optional] |
| **embed** | **String** | &#x60;off&#x60;: words and graph only, no vectors. | [optional][default to &#39;auto&#39;] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbCreateRequest.new(
  id: null,
  name: null,
  embed: null
)
```

