# Capability

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**route** | **String** | The standard route for this capability on this provider. | 
**models** | **[String]** | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. | [optional] 
**providers** | **[String]** | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. | [optional] 
**_default** | **String** | One of &#x60;models&#x60;, or of &#x60;providers&#x60;. | [optional] 
**labels** | **[String]** | detect: the loaded model&#39;s label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. | [optional] 
**maxTokens** | **Int** | detect: the tokenizer&#39;s limit; null when effectively unbounded. | [optional] 
**requirements** | **[String: JSONValue]** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**stats** | [**CapabilityStats**](CapabilityStats.md) |  | [optional] 
**runtime** | **[String: JSONValue]** | state (off | loading | downloading | ready | error | external), name, dtype, error… | [optional] 
**streaming** | **String** | stt: the session route for live dictation. | [optional] 
**voices** | **String** | tts: the voices route. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


