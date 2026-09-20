# chatpanel.model.WebSearchResponse

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**BuiltList&lt;WebSearchResult&gt;**](WebSearchResult.md) |  | 
**answers** | **BuiltList&lt;String&gt;** | SearXNG's direct answers, when it had any. | [optional] 
**suggestions** | **BuiltList&lt;String&gt;** |  | [optional] 
**engines** | **BuiltList&lt;String&gt;** | What was actually asked. | [optional] 
**unresponsive** | **BuiltList&lt;String&gt;** | SearXNG engines that did not answer. | [optional] 
**redacted** | **bool** | Layer-1 redaction removed something from the query. | [optional] 
**query** | **String** | The query as sent, when `redacted`. | [optional] 
**provider** | **String** |  | 
**ms** | **num** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


