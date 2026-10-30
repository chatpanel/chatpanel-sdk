# ChatPanel.Sdk.Model.ExtractContextResponseAttachment
The block to put BEFORE the question; null when nothing could be read.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | [optional] 
**Prefetch** | **string** |  | [optional] 
**Title** | **string** |  | [optional] 
**Text** | **string** | Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt&#39;s language before reading it), then &#x60;- -- page n - --&#x60; and that page&#39;s text. | [optional] 
**Chars** | **int** |  | [optional] 
**Cites** | [**List&lt;ExtractContextResponseAttachmentCitesInner&gt;**](ExtractContextResponseAttachmentCitesInner.md) |  | [optional] 
**Docs** | [**List&lt;ExtractContextResponseAttachmentDocsInner&gt;**](ExtractContextResponseAttachmentDocsInner.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

