# ChatPanel::ExtractContextResponseAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  | [optional] |
| **prefetch** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **text** | **String** | Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt&#39;s language before reading it), then &#x60;--- page n ---&#x60; and that page&#39;s text. | [optional] |
| **chars** | **Integer** |  | [optional] |
| **cites** | [**Array&lt;ExtractContextResponseAttachmentCitesInner&gt;**](ExtractContextResponseAttachmentCitesInner.md) |  | [optional] |
| **docs** | [**Array&lt;ExtractContextResponseAttachmentDocsInner&gt;**](ExtractContextResponseAttachmentDocsInner.md) |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ExtractContextResponseAttachment.new(
  kind: null,
  prefetch: null,
  title: null,
  text: null,
  chars: null,
  cites: null,
  docs: null
)
```

