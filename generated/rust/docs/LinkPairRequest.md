# LinkPairRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | Option<**Kind**> | Absent is a phone. (enum: phone, partner) | [optional]
**name** | Option<**String**> | A phone pairing — what the phone calls this computer. | [optional]
**partner** | Option<[**models::LinkPairRequestPartner**](LinkPairRequestPartner.md)> |  | [optional]
**scopes** | Option<[**models::LinkPairRequestScopes**](LinkPairRequestScopes.md)> |  | [optional]
**route** | Option<**Route**> | The partner's one path. Absent is the gateway's own route. (enum: link, relay, tailscale, cloudflare) | [optional]
**relay** | Option<**String**> | The https relay for `route relay`. | [optional]
**confirm** | Option<**bool**> | The owner saw the preview and said yes. Without it nothing is issued. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


