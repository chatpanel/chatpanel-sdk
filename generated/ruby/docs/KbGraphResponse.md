# ChatPanel::KbGraphResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node** | [**KbGraphResponseNode**](KbGraphResponseNode.md) |  |  |
| **neighbours** | [**Array&lt;KbGraphResponseNeighboursInner&gt;**](KbGraphResponseNeighboursInner.md) |  |  |
| **to** | **String** |  | [optional] |
| **path** | [**Array&lt;KbGraphResponsePathInner&gt;**](KbGraphResponsePathInner.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbGraphResponse.new(
  node: null,
  neighbours: null,
  to: null,
  path: null,
  message: null
)
```

