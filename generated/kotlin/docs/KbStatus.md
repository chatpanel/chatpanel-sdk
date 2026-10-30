
# KbStatus

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **name** | **kotlin.String** |  |  |
| **docs** | **kotlin.Int** |  |  |
| **chunks** | **kotlin.Int** |  |  |
| **notes** | **kotlin.Int** |  |  |
| **vectors** | **kotlin.Int** |  |  |
| **entities** | **kotlin.Int** |  |  |
| **edges** | **kotlin.Int** |  |  |
| **documents** | [**kotlin.collections.List&lt;KbDocument&gt;**](KbDocument.md) |  |  |
| **v** | **kotlin.Int** |  |  [optional] |
| **createdAt** | **kotlin.Long** |  |  [optional] |
| **updatedAt** | **kotlin.Long** |  |  [optional] |
| **proposed** | **kotlin.Int** | Notes awaiting acceptance. |  [optional] |
| **model** | **kotlin.String** | The embedding model the vectors came from. |  [optional] |
| **dims** | **kotlin.Int** |  |  [optional] |
| **embed** | [**inline**](#Embed) |  |  [optional] |
| **reach** | **kotlin.String** | The tightest provenance of its documents (&#x60;internal&#x60;, &#x60;web&#x60;, or empty). |  [optional] |
| **access** | [**KbAccess**](KbAccess.md) |  |  [optional] |
| **bytes** | **kotlin.Long** | On disk. |  [optional] |
| **dir** | **kotlin.String** | The folder on disk — to a caller with the token only. |  [optional] |


<a id="Embed"></a>
## Enum: embed
| Name | Value |
| ---- | ----- |
| embed | auto, false |



