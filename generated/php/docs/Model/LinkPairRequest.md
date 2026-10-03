# LinkPairRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **string** | Absent is a phone. | [optional]
**name** | **string** | A phone pairing — what the phone calls this computer. | [optional]
**partner** | [**\ChatPanelSdk\Model\LinkPairRequestPartner**](LinkPairRequestPartner.md) |  | [optional]
**scopes** | [**\ChatPanelSdk\Model\LinkPairRequestScopes**](LinkPairRequestScopes.md) |  | [optional]
**route** | **string** | The partner&#39;s one path. Absent is the gateway&#39;s own route. | [optional]
**relay** | **string** | The https relay for &#x60;route relay&#x60;. | [optional]
**confirm** | **bool** | The owner saw the preview and said yes. Without it nothing is issued. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
