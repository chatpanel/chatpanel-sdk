# LinkPairRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **String** | Absent is a phone. | [optional] 
**name** | **String** | A phone pairing — what the phone calls this computer. | [optional] 
**partner** | [**LinkPairRequestPartner**](LinkPairRequestPartner.md) |  | [optional] 
**scopes** | [**LinkPairRequestScopes**](LinkPairRequestScopes.md) |  | [optional] 
**route** | **String** | The partner&#39;s one path. Absent is the gateway&#39;s own route. | [optional] 
**relay** | **String** | The https relay for &#x60;route relay&#x60;. | [optional] 
**confirm** | **Bool** | The owner saw the preview and said yes. Without it nothing is issued. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


