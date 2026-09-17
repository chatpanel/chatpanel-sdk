# ChatPanel::ChatCompletion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object** | **String** |  |  |
| **created** | **Integer** |  | [optional] |
| **model** | **String** |  | [optional] |
| **choices** | [**Array&lt;ChatCompletionChoicesInner&gt;**](ChatCompletionChoicesInner.md) |  |  |
| **usage** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ChatCompletion.new(
  id: null,
  object: null,
  created: null,
  model: null,
  choices: null,
  usage: null
)
```

