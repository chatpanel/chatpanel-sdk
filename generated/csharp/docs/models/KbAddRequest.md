# ChatPanel.Sdk.Model.KbAddRequest
One source: `name` + `data`, or `path`, or `url`, or `text`.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **string** | The file name (with &#x60;data&#x60;); the title for &#x60;text&#x60; when none is given. | [optional] 
**Type** | **string** | A type hint (&#x60;pdf&#x60;, &#x60;docx&#x60;); the bytes decide. | [optional] 
**Data** | **byte[]** | The whole file, base64, at most 64 MB decoded. | [optional] 
**Path** | **string** | A file or folder on this machine (token-gated). | [optional] 
**Recursive** | **bool** | With a folder: walk subfolders. | [optional] [default to true]
**Include** | **List&lt;string&gt;** | With a folder: only these extensions (&#x60;*.pdf&#x60;, &#x60;.md&#x60;). | [optional] 
**Url** | **string** | A public http(s) page, read as Markdown. | [optional] 
**Text** | **string** | Plain text or Markdown, up to 4 M characters. | [optional] 
**Title** | **string** |  | [optional] 
**Reach** | **string** | Provenance to record on the document (&#x60;internal&#x60; narrows a turn that uses it). | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

