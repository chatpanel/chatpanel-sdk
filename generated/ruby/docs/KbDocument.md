# ChatPanel::KbDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **title** | **String** |  |  |
| **pages** | **Integer** |  |  |
| **chunks** | **Integer** | Passages. |  |
| **type** | **String** |  | [optional] |
| **source** | [**KbDocumentSource**](KbDocumentSource.md) |  | [optional] |
| **added_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbDocument.new(
  id: null,
  title: null,
  pages: null,
  chunks: null,
  type: null,
  source: null,
  added_at: null
)
```

