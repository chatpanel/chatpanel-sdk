# chatpanel.model.KbAddRequest

## Load the model package
```dart
import 'package:chatpanel/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The file name (with `data`); the title for `text` when none is given. | [optional] 
**type** | **String** | A type hint (`pdf`, `docx`); the bytes decide. | [optional] 
**data** | **String** | The whole file, base64, at most 64 MB decoded. | [optional] 
**path** | **String** | A file or folder on this machine (token-gated). | [optional] 
**recursive** | **bool** | With a folder: walk subfolders. | [optional] [default to true]
**include** | **BuiltList&lt;String&gt;** | With a folder: only these extensions (`*.pdf`, `.md`). | [optional] 
**url** | **String** | A public http(s) page, read as Markdown. | [optional] 
**text** | **String** | Plain text or Markdown, up to 4 M characters. | [optional] 
**title** | **String** |  | [optional] 
**reach** | **String** | Provenance to record on the document (`internal` narrows a turn that uses it). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


