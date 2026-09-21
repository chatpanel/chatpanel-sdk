# ChatPanel::RuntimeServiceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional][default to &#39;start&#39;] |
| **model** | **String** | With &#x60;action: model&#x60; — a catalogue id or a Hugging Face owner/name. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RuntimeServiceRequest.new(
  action: null,
  model: null
)
```

