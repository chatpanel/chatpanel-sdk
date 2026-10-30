# ChatPanel::KbStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **v** | **Integer** |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **updated_at** | **Integer** |  | [optional] |
| **docs** | **Integer** |  |  |
| **chunks** | **Integer** |  |  |
| **notes** | **Integer** |  |  |
| **proposed** | **Integer** | Notes awaiting acceptance. | [optional] |
| **vectors** | **Integer** |  |  |
| **model** | **String** | The embedding model the vectors came from. | [optional] |
| **dims** | **Integer** |  | [optional] |
| **embed** | **String** |  | [optional] |
| **entities** | **Integer** |  |  |
| **edges** | **Integer** |  |  |
| **reach** | **String** | The tightest provenance of its documents (&#x60;internal&#x60;, &#x60;web&#x60;, or empty). | [optional] |
| **access** | [**KbAccess**](KbAccess.md) |  | [optional] |
| **documents** | [**Array&lt;KbDocument&gt;**](KbDocument.md) |  |  |
| **bytes** | **Integer** | On disk. | [optional] |
| **dir** | **String** | The folder on disk — to a caller with the token only. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbStatus.new(
  id: null,
  name: null,
  v: null,
  created_at: null,
  updated_at: null,
  docs: null,
  chunks: null,
  notes: null,
  proposed: null,
  vectors: null,
  model: null,
  dims: null,
  embed: null,
  entities: null,
  edges: null,
  reach: null,
  access: null,
  documents: null,
  bytes: null,
  dir: null
)
```

