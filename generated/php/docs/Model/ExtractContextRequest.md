# ExtractContextRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**question** | **string** | The question the documents are read for — its content words pick the pages of a long document. |
**documents** | [**\ChatPanelSdk\Model\ExtractContextRequestDocumentsInner[]**](ExtractContextRequestDocumentsInner.md) | Each document as its bytes (&#x60;name&#x60; + &#x60;data&#x60;, optionally &#x60;type&#x60;) or as the &#x60;hash&#x60; &#x60;/v1/extract&#x60; returned for one already open (optionally &#x60;name&#x60;, the title the block shows). |
**window** | **int** | The answering model&#39;s window in tokens — sizes the share the documents may take. Absent: a small window&#39;s share. | [optional]
**budget_chars** | **int** | The share outright, in characters; overrides &#x60;window&#x60;. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
