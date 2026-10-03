# LinkDevice

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**kind** | **String** |  | [optional] 
**name** | **String** |  | 
**pairedAt** | **Int64** |  | [optional] 
**lastSeen** | **Int64** |  | [optional] 
**online** | **Bool** |  | [optional] 
**via** | **String** | tunnel or relay, while online. | [optional] 
**partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] 
**scopes** | **[String]** |  | [optional] 
**route** | **String** | A partner&#39;s route | [optional] 
**host** | **String** |  | [optional] 
**routeClosed** | **Bool** | A tunnel partner whose door shut when the gateway&#39;s route moved — pair it again to move it. | [optional] 
**staleRelay** | **String** |  | [optional] 
**tunnelNeedsRelink** | **Bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


