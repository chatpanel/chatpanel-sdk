# ChatPanel::ExtractRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The file name — its extension helps tell office formats apart. | [optional] |
| **type** | **String** | The client&#39;s guess at the type (e.g. &#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional] |
| **data** | **String** | The whole file, base64. At most 64 MB decoded. | [optional] |
| **hash** | **String** | The &#x60;hash&#x60; an open call returned. | [optional] |
| **page** | **Integer** | The page to read, 1-based. | [optional] |
| **budget_ms** | **Float** | Refused before parsing if the worker&#39;s record predicts it cannot be met. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ExtractRequest.new(
  name: null,
  type: null,
  data: null,
  hash: null,
  page: null,
  budget_ms: null
)
```

