# ChatPanel::ChatCompletionChunk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **model** | **String** |  | [optional] |
| **choices** | [**Array&lt;ChatCompletionChunkChoicesInner&gt;**](ChatCompletionChunkChoicesInner.md) |  |  |
| **usage** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ChatCompletionChunk.new(
  id: null,
  object: null,
  model: null,
  choices: null,
  usage: null
)
```

