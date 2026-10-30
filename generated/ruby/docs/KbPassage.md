# ChatPanel::KbPassage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | &#x60;&lt;doc&gt;#&lt;n&gt;&#x60;, or &#x60;note:&lt;id&gt;&#x60;. |  |
| **doc** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **page_end** | **Integer** |  | [optional] |
| **section** | **String** | The heading path, &#x60; › &#x60;-joined. | [optional] |
| **text** | **String** |  |  |
| **chars** | **Integer** |  | [optional] |
| **score** | **Float** | The fused rank score (RRF) — only its order means anything. | [optional] |
| **scores** | **Hash&lt;String, Float&gt;** | Each lane&#39;s own score (&#x60;text&#x60;, &#x60;vector&#x60;, &#x60;rerank&#x60;), comparable within one query. | [optional] |
| **rerank** | **Float** |  | [optional] |
| **lanes** | **Array&lt;String&gt;** |  | [optional] |
| **via** | **Array&lt;String&gt;** | For a graph hit: the node(s) it was reached through. | [optional] |
| **cite** | **String** | As the model is told to write it: &#x60;[report.pdf p.12]&#x60;. | [optional] |
| **status** | **String** | A note&#39;s. | [optional] |
| **cites** | **Array&lt;String&gt;** | A note&#39;s passage ids. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::KbPassage.new(
  id: null,
  doc: null,
  title: null,
  kind: null,
  page: null,
  page_end: null,
  section: null,
  text: null,
  chars: null,
  score: null,
  scores: null,
  rerank: null,
  lanes: null,
  via: null,
  cite: null,
  status: null,
  cites: null
)
```

