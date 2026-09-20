# chatpanel.model.Capability

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**route** | **String** | The standard route for this capability on this provider. | 
**models** | **BuiltList&lt;String&gt;** | Model capabilities (detect, decide, rerank, embed, stt, tts): the models offered. Required for those. | [optional] 
**providers** | **BuiltList&lt;String&gt;** | Provider capabilities (search, read): the providers offered — a SearXNG, a SERP scraper, an extractor. Required for those. | [optional] 
**default_** | **String** | One of `models`, or of `providers`. | [optional] 
**labels** | **BuiltList&lt;String&gt;** | detect: the loaded model's label vocabulary, BIOES prefixes stripped. Empty until a model is loaded. | [optional] 
**maxTokens** | **int** | detect: the tokenizer's limit; null when effectively unbounded. | [optional] 
**requirements** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional] 
**stats** | [**CapabilityStats**](CapabilityStats.md) |  | [optional] 
**runtime** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | state (off | loading | downloading | ready | error | external), name, dtype, error… | [optional] 
**streaming** | **String** | stt: the session route for live dictation. | [optional] 
**voices** | **String** | tts: the voices route. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


