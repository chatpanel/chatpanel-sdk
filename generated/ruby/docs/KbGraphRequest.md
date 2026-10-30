# ChatPanel::KbGraphRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node** | **String** | An entity, section or topic by name (or a node id). |  |
| **to** | **String** | A second node: the path from &#x60;node&#x60; to it. | [optional] |
| **hops** | **Integer** |  | [optional][default to 1] |
| **kinds** | **Array&lt;String&gt;** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 20] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbGraphRequest.new(
  node: null,
  to: null,
  hops: null,
  kinds: null,
  limit: null
)
```

