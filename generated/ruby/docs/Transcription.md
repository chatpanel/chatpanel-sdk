# ChatPanel::Transcription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  |  |
| **task** | **String** | verbose_json only | [optional] |
| **language** | **String** | verbose_json only | [optional] |
| **duration** | **Float** | Seconds of audio; verbose_json only. | [optional] |
| **provider** | **String** | Who transcribed; verbose_json only. | [optional] |
| **took_ms** | **Integer** |  | [optional] |
| **segments** | [**Array&lt;TranscriptionSegmentsInner&gt;**](TranscriptionSegmentsInner.md) | verbose_json only. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::Transcription.new(
  text: null,
  task: null,
  language: null,
  duration: null,
  provider: null,
  took_ms: null,
  segments: null
)
```

