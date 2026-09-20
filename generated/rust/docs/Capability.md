# Capability

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Id** |  (enum: detect, decide, rerank, embed, stt, tts, search, read) | 
**route** | **String** | The standard route for this capability on this provider. | 
**models** | Option<**Vec<String>**> | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. | [optional]
**providers** | Option<**Vec<String>**> | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. | [optional]
**default** | Option<**String**> | One of `models`, or of `providers`. | [optional]
**labels** | Option<**Vec<String>**> | detect: the loaded model's label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. | [optional]
**max_tokens** | Option<**i32**> | detect: the tokenizer's limit; null when effectively unbounded. | [optional]
**requirements** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]
**stats** | Option<[**models::CapabilityStats**](CapabilityStats.md)> |  | [optional]
**runtime** | Option<**std::collections::HashMap<String, serde_json::Value>**> | state (off | loading | downloading | ready | error | external), name, dtype, error… | [optional]
**streaming** | Option<**String**> | stt: the session route for live dictation. | [optional]
**voices** | Option<**String**> | tts: the voices route. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


