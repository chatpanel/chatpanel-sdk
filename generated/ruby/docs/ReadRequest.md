# ChatPanel::ReadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Absolute http(s) URL of a public page. |  |
| **format** | **String** |  | [optional][default to &#39;markdown&#39;] |
| **max_chars** | **Integer** | Cut at a section boundary near this length; &#x60;truncated&#x60; says so. | [optional] |
| **snippet** | **String** | A search snippet to stand in for the content when the page cannot be read. | [optional] |
| **provider** | **String** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;read&#x60;; 404 otherwise. | [optional] |
| **budget_ms** | **Float** | Refused before fetching if the provider&#39;s record predicts it cannot be met. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ReadRequest.new(
  url: null,
  format: null,
  max_chars: null,
  snippet: null,
  provider: null,
  budget_ms: null
)
```

