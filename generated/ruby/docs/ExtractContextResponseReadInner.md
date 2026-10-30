# ChatPanel::ExtractContextResponseReadInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **of** | **Integer** | The document&#39;s page count. | [optional] |
| **pages** | **Array&lt;Integer&gt;** | The pages in the block. | [optional] |
| **how** | **String** |  | [optional] |
| **hash** | **String** | The document&#39;s hash — reuse it on the next call. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ExtractContextResponseReadInner.new(
  id: null,
  title: null,
  of: null,
  pages: null,
  how: null,
  hash: null
)
```

