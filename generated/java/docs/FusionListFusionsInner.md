

# FusionListFusionsInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**capability** | **String** |  |  |
|**label** | **String** |  |  [optional] |
|**members** | [**List&lt;FusionListFusionsInnerMembersInner&gt;**](FusionListFusionsInnerMembersInner.md) |  |  |
|**derived** | **Boolean** | Read from the gateway’s state, not composed. |  [optional] |
|**source** | **String** | For a derived one: ner, or the runtime service. |  [optional] |
|**running** | **Boolean** |  |  [optional] |
|**describe** | **String** | The fusion in a sentence. |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| UNION | &quot;union&quot; |
| DRAFT | &quot;draft&quot; |
| FALLBACK | &quot;fallback&quot; |



