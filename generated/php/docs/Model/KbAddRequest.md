# KbAddRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **string** | The file name (with &#x60;data&#x60;); the title for &#x60;text&#x60; when none is given. | [optional]
**type** | **string** | A type hint (&#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional]
**data** | **string** | The whole file, base64, at most 64 MB decoded. | [optional]
**path** | **string** | A file or folder on this machine (token-gated). | [optional]
**recursive** | **bool** | With a folder: walk subfolders. | [optional] [default to true]
**include** | **string[]** | With a folder: only these extensions (&#x60;*.pdf&#x60;, &#x60;.md&#x60;). | [optional]
**url** | **string** | A public http(s) page, read as Markdown. | [optional]
**text** | **string** | Plain text or Markdown, up to 4 M characters. | [optional]
**title** | **string** |  | [optional]
**reach** | **string** | Provenance to record on the document (&#x60;internal&#x60; narrows a turn that uses it). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
