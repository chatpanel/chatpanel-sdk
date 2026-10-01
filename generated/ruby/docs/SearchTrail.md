# ChatPanel::SearchTrail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | How it ended: &#x60;answered&#x60; (results came back) · &#x60;nothing&#x60; (engines answered, none had anything) · &#x60;blocked&#x60; (every engine asked refused or timed out) · &#x60;resting&#x60; (nothing was asked: every engine is resting after earlier refusals) · &#x60;offline&#x60; (every engine failed at the network) · &#x60;no-engines&#x60;. A client meeting a value it does not know treats it as no results. |  |
| **asked** | [**Array&lt;SearchTrailAsk&gt;**](SearchTrailAsk.md) | In the order asked: the provider tried first (&#x60;searxng&#x60;, or each engine and API &#x60;serp&#x60; asked), then the other provider when the first came back empty. |  |
| **resting** | [**Array&lt;SearchTrailResting&gt;**](SearchTrailResting.md) | Engines resting after refusing earlier, and until when. |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::SearchTrail.new(
  status: null,
  asked: null,
  resting: null
)
```

