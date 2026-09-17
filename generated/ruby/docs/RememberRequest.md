# ChatPanel::RememberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | One short sentence. |  |
| **kind** | **String** |  | [optional][default to &#39;fact&#39;] |
| **scope** | **String** |  | [optional][default to &#39;global&#39;] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **source** | [**MemorySource**](MemorySource.md) |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RememberRequest.new(
  text: null,
  kind: null,
  scope: null,
  tags: null,
  source: null
)
```

