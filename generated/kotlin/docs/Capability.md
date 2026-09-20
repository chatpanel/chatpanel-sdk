
# Capability

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | [**inline**](#Id) |  |  |
| **route** | **kotlin.String** | The standard route for this capability on this provider. |  |
| **models** | **kotlin.collections.List&lt;kotlin.String&gt;** | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. |  [optional] |
| **providers** | **kotlin.collections.List&lt;kotlin.String&gt;** | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. |  [optional] |
| **default** | **kotlin.String** | One of &#x60;models&#x60;, or of &#x60;providers&#x60;. |  [optional] |
| **labels** | **kotlin.collections.List&lt;kotlin.String&gt;** | detect: the loaded model&#39;s label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. |  [optional] |
| **maxTokens** | **kotlin.Int** | detect: the tokenizer&#39;s limit; null when effectively unbounded. |  [optional] |
| **requirements** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
| **stats** | [**CapabilityStats**](CapabilityStats.md) |  |  [optional] |
| **runtime** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | state (off | loading | downloading | ready | error | external), name, dtype, error… |  [optional] |
| **streaming** | **kotlin.String** | stt: the session route for live dictation. |  [optional] |
| **voices** | **kotlin.String** | tts: the voices route. |  [optional] |


<a id="Id"></a>
## Enum: id
| Name | Value |
| ---- | ----- |
| id | detect, decide, rerank, embed, stt, tts, search, read |



