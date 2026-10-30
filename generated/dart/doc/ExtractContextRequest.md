# chatpanel.model.ExtractContextRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**question** | **String** | The question the documents are read for — its content words pick the pages of a long document. | 
**documents** | [**BuiltList&lt;ExtractContextRequestDocumentsInner&gt;**](ExtractContextRequestDocumentsInner.md) | Each document as its bytes (`name` + `data`, optionally `type`) or as the `hash` `/v1/extract` returned for one already open (optionally `name`, the title the block shows). | 
**window** | **int** | The answering model's window in tokens — sizes the share the documents may take. Absent: a small window's share. | [optional] 
**budgetChars** | **int** | The share outright, in characters; overrides `window`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


