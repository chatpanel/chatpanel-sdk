

# KbStatus


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**name** | **String** |  |  |
|**v** | **Integer** |  |  [optional] |
|**createdAt** | **Long** |  |  [optional] |
|**updatedAt** | **Long** |  |  [optional] |
|**docs** | **Integer** |  |  |
|**chunks** | **Integer** |  |  |
|**notes** | **Integer** |  |  |
|**proposed** | **Integer** | Notes awaiting acceptance. |  [optional] |
|**vectors** | **Integer** |  |  |
|**model** | **String** | The embedding model the vectors came from. |  [optional] |
|**dims** | **Integer** |  |  [optional] |
|**embed** | [**EmbedEnum**](#EmbedEnum) |  |  [optional] |
|**entities** | **Integer** |  |  |
|**edges** | **Integer** |  |  |
|**reach** | **String** | The tightest provenance of its documents (&#x60;internal&#x60;, &#x60;web&#x60;, or empty). |  [optional] |
|**access** | [**KbAccess**](KbAccess.md) |  |  [optional] |
|**documents** | [**List&lt;KbDocument&gt;**](KbDocument.md) |  |  |
|**bytes** | **Long** | On disk. |  [optional] |
|**dir** | **String** | The folder on disk — to a caller with the token only. |  [optional] |



## Enum: EmbedEnum

| Name | Value |
|---- | -----|
| AUTO | &quot;auto&quot; |
| FALSE | &quot;false&quot; |



