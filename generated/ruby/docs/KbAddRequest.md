# ChatPanel::KbAddRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The file name (with &#x60;data&#x60;); the title for &#x60;text&#x60; when none is given. | [optional] |
| **type** | **String** | A type hint (&#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional] |
| **data** | **String** | The whole file, base64, at most 64 MB decoded. | [optional] |
| **path** | **String** | A file or folder on this machine (token-gated). | [optional] |
| **recursive** | **Boolean** | With a folder: walk subfolders. | [optional][default to true] |
| **include** | **Array&lt;String&gt;** | With a folder: only these extensions (&#x60;*.pdf&#x60;, &#x60;.md&#x60;). | [optional] |
| **url** | **String** | A public http(s) page, read as Markdown. | [optional] |
| **text** | **String** | Plain text or Markdown, up to 4 M characters. | [optional] |
| **title** | **String** |  | [optional] |
| **reach** | **String** | Provenance to record on the document (&#x60;internal&#x60; narrows a turn that uses it). | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbAddRequest.new(
  name: null,
  type: null,
  data: null,
  path: null,
  recursive: null,
  include: null,
  url: null,
  text: null,
  title: null,
  reach: null
)
```

