# Capability

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  |
**route** | **string** | The standard route for this capability on this provider. |
**models** | **string[]** | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. | [optional]
**providers** | **string[]** | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. | [optional]
**default** | **string** | One of &#x60;models&#x60;, or of &#x60;providers&#x60;. | [optional]
**labels** | **string[]** | detect: the loaded model&#39;s label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. | [optional]
**max_tokens** | **int** | detect: the tokenizer&#39;s limit; null when effectively unbounded. | [optional]
**requirements** | **array<string,mixed>** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional]
**stats** | [**\ChatPanelSdk\Model\CapabilityStats**](CapabilityStats.md) |  | [optional]
**runtime** | **array<string,mixed>** | state (off | loading | downloading | ready | error | external), name, dtype, error… | [optional]
**streaming** | **string** | stt: the session route for live dictation. | [optional]
**voices** | **string** | tts: the voices route. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
