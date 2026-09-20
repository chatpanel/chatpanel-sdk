# ChatPanel::ReadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Where to CITE the page: the same-origin canonical, else where the fetch landed. Fragments dropped. |  |
| **requested** | **String** | The URL that was asked for. | [optional] |
| **title** | **String** |  |  |
| **author** | **String** |  | [optional] |
| **published** | **String** | As the page declared it (ISO date or datetime when it gave one). | [optional] |
| **site** | **String** | The hostname of &#x60;url&#x60;. | [optional] |
| **lang** | **String** |  | [optional] |
| **format** | **String** |  |  |
| **markdown** | **String** | The content, when &#x60;format&#x60; is markdown. | [optional] |
| **text** | **String** | The content, when &#x60;format&#x60; is text. | [optional] |
| **chars** | **Integer** | Length of the content field. |  |
| **truncated** | **Boolean** |  |  |
| **sections** | [**Array&lt;ReadSection&gt;**](ReadSection.md) |  |  |
| **fetched** | **Time** | When the page was fetched (the cached copy&#39;s time on a cache hit). | [optional] |
| **cached** | **Boolean** |  | [optional] |
| **provider** | **String** |  |  |
| **ms** | **Float** |  |  |
| **restricted** | [**ReadRestriction**](ReadRestriction.md) | Set when the page was not read as the article; the content is then the request&#39;s &#x60;snippet&#x60;. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ReadResponse.new(
  url: null,
  requested: null,
  title: null,
  author: null,
  published: null,
  site: null,
  lang: null,
  format: null,
  markdown: null,
  text: null,
  chars: null,
  truncated: null,
  sections: null,
  fetched: null,
  cached: null,
  provider: null,
  ms: null,
  restricted: null
)
```

