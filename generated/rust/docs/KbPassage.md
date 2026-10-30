# KbPassage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | `<doc>#<n>`, or `note:<id>`. | 
**doc** | Option<**String**> |  | [optional]
**title** | Option<**String**> |  | [optional]
**kind** | Option<**Kind**> |  (enum: text, note) | [optional]
**page** | Option<**i32**> |  | [optional]
**page_end** | Option<**i32**> |  | [optional]
**section** | Option<**String**> | The heading path, ` › `-joined. | [optional]
**text** | **String** |  | 
**chars** | Option<**i32**> |  | [optional]
**score** | Option<**f64**> | The fused rank score (RRF) — only its order means anything. | [optional]
**scores** | Option<**std::collections::HashMap<String, f64>**> | Each lane's own score (`text`, `vector`, `rerank`), comparable within one query. | [optional]
**rerank** | Option<**f64**> |  | [optional]
**lanes** | Option<**Vec<Lanes>**> |  (enum: text, vector, graph, notes, rerank) | [optional]
**via** | Option<**Vec<String>**> | For a graph hit: the node(s) it was reached through. | [optional]
**cite** | Option<**String**> | As the model is told to write it: `[report.pdf p.12]`. | [optional]
**status** | Option<**Status**> | A note's. (enum: proposed, accepted) | [optional]
**cites** | Option<**Vec<String>**> | A note's passage ids. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


