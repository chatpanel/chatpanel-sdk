# ChatPanel.Sdk.Model.Capability

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Route** | **string** | The standard route for this capability on this provider. | 
**Models** | **List&lt;string&gt;** | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. | [optional] 
**Providers** | **List&lt;string&gt;** | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. | [optional] 
**Default** | **string** | One of &#x60;models&#x60;, or of &#x60;providers&#x60;. | [optional] 
**Labels** | **List&lt;string&gt;** | detect: the loaded model&#39;s label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. | [optional] 
**MaxTokens** | **int** | detect: the tokenizer&#39;s limit; null when effectively unbounded. | [optional] 
**Requirements** | **Dictionary&lt;string, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Stats** | [**CapabilityStats**](CapabilityStats.md) |  | [optional] 
**Runtime** | **Dictionary&lt;string, Object&gt;** | state (off | loading | downloading | ready | error | external), name, dtype, error… | [optional] 
**Streaming** | **string** | stt: the session route for live dictation. | [optional] 
**Voices** | **string** | tts: the voices route. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

