# ChatPanel::KbSearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;KbPassage&gt;**](KbPassage.md) |  |  |
| **lanes** | [**KbSearchResponseLanes**](KbSearchResponseLanes.md) |  |  |
| **queries** | **Array&lt;String&gt;** | The query shapes searched. |  |
| **ms** | **Float** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbSearchResponse.new(
  results: null,
  lanes: null,
  queries: null,
  ms: null
)
```

