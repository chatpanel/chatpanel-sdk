# KbAddRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | Option<**String**> | The file name (with `data`); the title for `text` when none is given. | [optional]
**r#type** | Option<**String**> | A type hint (`pdf`, `docx`); the bytes decide. | [optional]
**data** | Option<**String**> | The whole file, base64, at most 64 MB decoded. | [optional]
**path** | Option<**String**> | A file or folder on this machine (token-gated). | [optional]
**recursive** | Option<**bool**> | With a folder: walk subfolders. | [optional][default to true]
**include** | Option<**Vec<String>**> | With a folder: only these extensions (`*.pdf`, `.md`). | [optional]
**url** | Option<**String**> | A public http(s) page, read as Markdown. | [optional]
**text** | Option<**String**> | Plain text or Markdown, up to 4 M characters. | [optional]
**title** | Option<**String**> |  | [optional]
**reach** | Option<**String**> | Provenance to record on the document (`internal` narrows a turn that uses it). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


