# ChatPanel::RetrievalSearchAlias200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **title** | **String** |  |  |
| **description** | **String** |  |  |
| **content** | **String** |  |  |
| **published_time** | **String** |  | [optional] |
| **engine** | **String** | The engine that produced it, as on &#x60;WebSearchResult.engine&#x60;. Since gateway 0.79.0. | [optional] |
| **via** | **String** | The kind of door it came through, as on &#x60;WebSearchResult.via&#x60;. Since gateway 0.79.0. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RetrievalSearchAlias200ResponseDataInner.new(
  url: null,
  title: null,
  description: null,
  content: null,
  published_time: null,
  engine: null,
  via: null
)
```

