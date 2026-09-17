# ChatPanel::ChatCompletionChunkChoicesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** |  | [optional] |
| **delta** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **finish_reason** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ChatCompletionChunkChoicesInner.new(
  index: null,
  delta: null,
  finish_reason: null
)
```

