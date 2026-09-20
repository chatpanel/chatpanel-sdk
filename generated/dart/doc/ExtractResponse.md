# chatpanel.model.ExtractResponse

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hash** | **String** | SHA-256 of the bytes — the document's identity for page calls. | 
**type** | **String** | What the bytes are: pdf, docx, xlsx, pptx, odt, ods, odp, md, txt, csv, html. | 
**pages** | **int** |  | 
**title** | **String** | The document's own title, when it declares one; else empty. | [optional] 
**scanned** | **bool** | A PDF with no text layer: its pages are empty and need OCR, which this does not do. | [optional] 
**page** | **int** | Present on a page call. | [optional] 
**text** | **String** | The page's text, on a page call. May be empty. | [optional] 
**provider** | **String** | `chatpanel-extract`. | 
**ms** | **num** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


