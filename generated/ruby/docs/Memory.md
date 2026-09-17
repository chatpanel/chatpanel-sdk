# ChatPanel::Memory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **text** | **String** |  |  |
| **kind** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **updated_at** | **Integer** |  | [optional] |
| **source** | [**MemorySource**](MemorySource.md) |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::Memory.new(
  id: null,
  text: null,
  kind: null,
  scope: null,
  tags: null,
  created_at: null,
  updated_at: null,
  source: null
)
```

