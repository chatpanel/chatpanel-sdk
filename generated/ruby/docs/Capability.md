# ChatPanel::Capability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **route** | **String** | The standard route for this capability on this provider. |  |
| **models** | **Array&lt;String&gt;** | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. | [optional] |
| **providers** | **Array&lt;String&gt;** | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. | [optional] |
| **default** | **String** | One of &#x60;models&#x60;, or of &#x60;providers&#x60;. | [optional] |
| **labels** | **Array&lt;String&gt;** | detect: the loaded model&#39;s label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. | [optional] |
| **max_tokens** | **Integer** | detect: the tokenizer&#39;s limit; null when effectively unbounded. | [optional] |
| **requirements** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **stats** | [**CapabilityStats**](CapabilityStats.md) |  | [optional] |
| **runtime** | **Hash&lt;String, Object&gt;** | state (off | loading | downloading | ready | error | external), name, dtype, error… | [optional] |
| **streaming** | **String** | stt: the session route for live dictation. | [optional] |
| **voices** | **String** | tts: the voices route. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::Capability.new(
  id: null,
  route: null,
  models: null,
  providers: null,
  default: null,
  labels: null,
  max_tokens: null,
  requirements: null,
  stats: null,
  runtime: null,
  streaming: null,
  voices: null
)
```

