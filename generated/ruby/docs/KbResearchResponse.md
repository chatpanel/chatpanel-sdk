# ChatPanel::KbResearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachment** | [**KbResearchResponseAttachment**](KbResearchResponseAttachment.md) |  | [optional] |
| **read** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | What was read, grouped by document in page order (or the outline for a whole-document ask). |  |
| **hits** | [**Array&lt;KbResearchResponseHitsInner&gt;**](KbResearchResponseHitsInner.md) |  |  |
| **queries** | **Array&lt;String&gt;** |  |  |
| **verdict** | **String** | The check&#39;s answer when a model was given. | [optional] |
| **rounds** | **Integer** |  |  |
| **ask** | [**KbResearchResponseAsk**](KbResearchResponseAsk.md) |  | [optional] |
| **how** | **String** | How it was searched, in words. | [optional] |
| **frame** | [**KbResearchResponseFrame**](KbResearchResponseFrame.md) |  | [optional] |
| **ms** | **Float** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbResearchResponse.new(
  attachment: null,
  read: null,
  hits: null,
  queries: null,
  verdict: null,
  rounds: null,
  ask: null,
  how: null,
  frame: null,
  ms: null
)
```

