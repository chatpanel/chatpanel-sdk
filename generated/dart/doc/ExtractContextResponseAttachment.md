# chatpanel.model.ExtractContextResponseAttachment

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **String** |  | [optional] 
**prefetch** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**text** | **String** | Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt's language before reading it), then `--- page n ---` and that page's text. | [optional] 
**chars** | **int** |  | [optional] 
**cites** | [**BuiltList&lt;ExtractContextResponseAttachmentCitesInner&gt;**](ExtractContextResponseAttachmentCitesInner.md) |  | [optional] 
**docs** | [**BuiltList&lt;ExtractContextResponseAttachmentDocsInner&gt;**](ExtractContextResponseAttachmentDocsInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


