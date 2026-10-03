# LinkDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**kind** | Option<**Kind**> |  (enum: phone, partner) | [optional]
**name** | **String** |  | 
**paired_at** | Option<**i64**> |  | [optional]
**last_seen** | Option<**i64**> |  | [optional]
**online** | Option<**bool**> |  | [optional]
**via** | Option<**String**> | tunnel or relay, while online. | [optional]
**partner** | Option<[**models::LinkPairResultPartner**](LinkPairResultPartner.md)> |  | [optional]
**scopes** | Option<**Vec<String>**> |  | [optional]
**route** | Option<**String**> | A partner's route | [optional]
**host** | Option<**String**> |  | [optional]
**route_closed** | Option<**bool**> | A tunnel partner whose door shut when the gateway's route moved — pair it again to move it. | [optional]
**folder** | Option<**String**> | Where a partner's agents work (0.90.0+, with agents). | [optional]
**stale_relay** | Option<**String**> |  | [optional]
**tunnel_needs_relink** | Option<**bool**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


