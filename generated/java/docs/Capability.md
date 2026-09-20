

# Capability


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | [**IdEnum**](#IdEnum) |  |  |
|**route** | **String** | The standard route for this capability on this provider. |  |
|**models** | **List&lt;String&gt;** | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. |  [optional] |
|**providers** | **List&lt;String&gt;** | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. |  [optional] |
|**_default** | **String** | One of &#x60;models&#x60;, or of &#x60;providers&#x60;. |  [optional] |
|**labels** | **List&lt;String&gt;** | detect: the loaded model&#39;s label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. |  [optional] |
|**maxTokens** | **Integer** | detect: the tokenizer&#39;s limit; null when effectively unbounded. |  [optional] |
|**requirements** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
|**stats** | [**CapabilityStats**](CapabilityStats.md) |  |  [optional] |
|**runtime** | **Map&lt;String, Object&gt;** | state (off | loading | downloading | ready | error | external), name, dtype, error… |  [optional] |
|**streaming** | **String** | stt: the session route for live dictation. |  [optional] |
|**voices** | **String** | tts: the voices route. |  [optional] |



## Enum: IdEnum

| Name | Value |
|---- | -----|
| DETECT | &quot;detect&quot; |
| DECIDE | &quot;decide&quot; |
| RERANK | &quot;rerank&quot; |
| EMBED | &quot;embed&quot; |
| STT | &quot;stt&quot; |
| TTS | &quot;tts&quot; |
| SEARCH | &quot;search&quot; |
| READ | &quot;read&quot; |



