# ChatPanel.Sdk.Model.LinkDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | **string** |  | 
**Kind** | **string** |  | [optional] 
**PairedAt** | **long** |  | [optional] 
**LastSeen** | **long** |  | [optional] 
**Online** | **bool** |  | [optional] 
**Via** | **string** | tunnel or relay, while online. | [optional] 
**Partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] 
**Scopes** | **List&lt;string&gt;** |  | [optional] 
**Route** | **string** | A partner&#39;s route | [optional] 
**Host** | **string** |  | [optional] 
**RouteClosed** | **bool** | A tunnel partner whose door shut when the gateway&#39;s route moved — pair it again to move it. | [optional] 
**StaleRelay** | **string** |  | [optional] 
**TunnelNeedsRelink** | **bool** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

