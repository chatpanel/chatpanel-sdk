# chatpanel.model.KbPassage

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | `<doc>#<n>`, or `note:<id>`. | 
**doc** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**kind** | **String** |  | [optional] 
**page** | **int** |  | [optional] 
**pageEnd** | **int** |  | [optional] 
**section** | **String** | The heading path, ` › `-joined. | [optional] 
**text** | **String** |  | 
**chars** | **int** |  | [optional] 
**score** | **num** | The fused rank score (RRF) — only its order means anything. | [optional] 
**scores** | **BuiltMap&lt;String, num&gt;** | Each lane's own score (`text`, `vector`, `rerank`), comparable within one query. | [optional] 
**rerank** | **num** |  | [optional] 
**lanes** | **BuiltList&lt;String&gt;** |  | [optional] 
**via** | **BuiltList&lt;String&gt;** | For a graph hit: the node(s) it was reached through. | [optional] 
**cite** | **String** | As the model is told to write it: `[report.pdf p.12]`. | [optional] 
**status** | **String** | A note's. | [optional] 
**cites** | **BuiltList&lt;String&gt;** | A note's passage ids. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


