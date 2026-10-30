
# ExtractContextResponseAttachment

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **kind** | [**inline**](#Kind) |  |  [optional] |
| **prefetch** | [**inline**](#Prefetch) |  |  [optional] |
| **title** | **kotlin.String** |  |  [optional] |
| **text** | **kotlin.String** | Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt&#39;s language before reading it), then &#x60;--- page n ---&#x60; and that page&#39;s text. |  [optional] |
| **chars** | **kotlin.Int** |  |  [optional] |
| **cites** | [**kotlin.collections.List&lt;ExtractContextResponseAttachmentCitesInner&gt;**](ExtractContextResponseAttachmentCitesInner.md) |  |  [optional] |
| **docs** | [**kotlin.collections.List&lt;ExtractContextResponseAttachmentDocsInner&gt;**](ExtractContextResponseAttachmentDocsInner.md) |  |  [optional] |


<a id="Kind"></a>
## Enum: kind
| Name | Value |
| ---- | ----- |
| kind | prefetch |


<a id="Prefetch"></a>
## Enum: prefetch
| Name | Value |
| ---- | ----- |
| prefetch | document |



