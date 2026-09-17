# ChatPanel::RedactionPreview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | What the model would receive. |  |
| **count** | **Integer** |  |  |
| **sanitized** | **Integer** |  | [optional] |
| **tier** | **String** |  | [optional] |
| **entities** | **Array&lt;Hash&gt;** | Placeholder tokens and their types — never the real values. | [optional] |
| **detector** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RedactionPreview.new(
  text: null,
  count: null,
  sanitized: null,
  tier: null,
  entities: null,
  detector: null
)
```

