# ChatPanel::ExtractResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | SHA-256 of the bytes — the document&#39;s identity for page calls. |  |
| **type** | **String** | What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html. |  |
| **pages** | **Integer** |  |  |
| **title** | **String** | The document&#39;s own title, when it declares one; else empty. | [optional] |
| **scanned** | **Boolean** | A PDF with no text layer: its pages are empty and need OCR, which this does not do. | [optional] |
| **page** | **Integer** | Present on a page call. | [optional] |
| **text** | **String** | The page&#39;s text, on a page call. May be empty. | [optional] |
| **provider** | **String** | &#x60;chatpanel-extract&#x60;. |  |
| **ms** | **Float** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ExtractResponse.new(
  hash: null,
  type: null,
  pages: null,
  title: null,
  scanned: null,
  page: null,
  text: null,
  provider: null,
  ms: null
)
```

