
# KbAddRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **name** | **kotlin.String** | The file name (with &#x60;data&#x60;); the title for &#x60;text&#x60; when none is given. |  [optional] |
| **type** | **kotlin.String** | A type hint (&#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. |  [optional] |
| **&#x60;data&#x60;** | **kotlin.ByteArray** | The whole file, base64, at most 64 MB decoded. |  [optional] |
| **path** | **kotlin.String** | A file or folder on this machine (token-gated). |  [optional] |
| **recursive** | **kotlin.Boolean** | With a folder: walk subfolders. |  [optional] |
| **include** | **kotlin.collections.List&lt;kotlin.String&gt;** | With a folder: only these extensions (&#x60;*.pdf&#x60;, &#x60;.md&#x60;). |  [optional] |
| **url** | **kotlin.String** | A public http(s) page, read as Markdown. |  [optional] |
| **text** | **kotlin.String** | Plain text or Markdown, up to 4 M characters. |  [optional] |
| **title** | **kotlin.String** |  |  [optional] |
| **reach** | **kotlin.String** | Provenance to record on the document (&#x60;internal&#x60; narrows a turn that uses it). |  [optional] |



