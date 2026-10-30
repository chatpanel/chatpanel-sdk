# ExtractContextResponseAttachment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | Option<**Kind**> |  (enum: prefetch) | [optional]
**prefetch** | Option<**Prefetch**> |  (enum: document) | [optional]
**title** | Option<**String**> |  | [optional]
**text** | Option<**String**> | Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt's language before reading it), then `--- page n ---` and that page's text. | [optional]
**chars** | Option<**i32**> |  | [optional]
**cites** | Option<[**Vec<models::ExtractContextResponseAttachmentCitesInner>**](ExtractContextResponseAttachmentCitesInner.md)> |  | [optional]
**docs** | Option<[**Vec<models::ExtractContextResponseAttachmentDocsInner>**](ExtractContextResponseAttachmentDocsInner.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


