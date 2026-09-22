# ChatPanel::AudioSpeechRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **input** | **String** |  |  |
| **voice** | **String** | A local voice id, or the remote provider’s; the configured default when absent. | [optional] |
| **speed** | **Float** |  | [optional][default to 1] |
| **response_format** | **String** | WAV is what the local engine makes. | [optional][default to &#39;wav&#39;] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::AudioSpeechRequest.new(
  input: null,
  voice: null,
  speed: null,
  response_format: null
)
```

