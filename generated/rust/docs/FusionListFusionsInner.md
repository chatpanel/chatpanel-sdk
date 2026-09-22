# FusionListFusionsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**kind** | **Kind** |  (enum: union, draft, fallback) | 
**capability** | **String** |  | 
**label** | Option<**String**> |  | [optional]
**members** | [**Vec<models::FusionListFusionsInnerMembersInner>**](FusionListFusionsInnerMembersInner.md) |  | 
**derived** | Option<**bool**> | Read from the gateway’s state, not composed. | [optional]
**source** | Option<**String**> | For a derived one: ner, or the runtime service. | [optional]
**running** | Option<**bool**> |  | [optional]
**describe** | Option<**String**> | The fusion in a sentence. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


