# ChatPanel::KbAddResponseAddedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **title** | **String** |  |  |
| **pages** | **Integer** |  |  |
| **chunks** | **Integer** |  |  |
| **replaced** | **Boolean** |  | [optional] |
| **scanned** | **Boolean** | A PDF with no text layer: indexed empty. | [optional] |
| **path** | **String** | Relative to the folder given. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbAddResponseAddedInner.new(
  id: null,
  title: null,
  pages: null,
  chunks: null,
  replaced: null,
  scanned: null,
  path: null
)
```

