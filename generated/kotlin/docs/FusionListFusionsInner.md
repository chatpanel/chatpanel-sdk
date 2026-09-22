
# FusionListFusionsInner

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **kind** | [**inline**](#Kind) |  |  |
| **capability** | **kotlin.String** |  |  |
| **members** | [**kotlin.collections.List&lt;FusionListFusionsInnerMembersInner&gt;**](FusionListFusionsInnerMembersInner.md) |  |  |
| **label** | **kotlin.String** |  |  [optional] |
| **derived** | **kotlin.Boolean** | Read from the gateway’s state, not composed. |  [optional] |
| **source** | **kotlin.String** | For a derived one: ner, or the runtime service. |  [optional] |
| **running** | **kotlin.Boolean** |  |  [optional] |
| **describe** | **kotlin.String** | The fusion in a sentence. |  [optional] |


<a id="Kind"></a>
## Enum: kind
| Name | Value |
| ---- | ----- |
| kind | union, draft, fallback |



