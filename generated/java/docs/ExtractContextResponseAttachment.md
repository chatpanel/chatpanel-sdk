

# ExtractContextResponseAttachment

The block to put BEFORE the question; null when nothing could be read.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  [optional] |
|**prefetch** | [**PrefetchEnum**](#PrefetchEnum) |  |  [optional] |
|**title** | **String** |  |  [optional] |
|**text** | **String** | Per document: a one-sentence head naming it and its pages (a sentence, not a tag — an on-device model judges the prompt&#39;s language before reading it), then &#x60;--- page n ---&#x60; and that page&#39;s text. |  [optional] |
|**chars** | **Integer** |  |  [optional] |
|**cites** | [**List&lt;ExtractContextResponseAttachmentCitesInner&gt;**](ExtractContextResponseAttachmentCitesInner.md) |  |  [optional] |
|**docs** | [**List&lt;ExtractContextResponseAttachmentDocsInner&gt;**](ExtractContextResponseAttachmentDocsInner.md) |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| PREFETCH | &quot;prefetch&quot; |



## Enum: PrefetchEnum

| Name | Value |
|---- | -----|
| DOCUMENT | &quot;document&quot; |



