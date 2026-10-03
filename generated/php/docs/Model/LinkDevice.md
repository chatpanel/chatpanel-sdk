# LinkDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  |
**kind** | **string** |  | [optional]
**name** | **string** |  |
**paired_at** | **int** |  | [optional]
**last_seen** | **int** |  | [optional]
**online** | **bool** |  | [optional]
**via** | **string** | tunnel or relay, while online. | [optional]
**partner** | [**\ChatPanelSdk\Model\LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional]
**scopes** | **string[]** |  | [optional]
**route** | **string** | A partner&#39;s route | [optional]
**host** | **string** |  | [optional]
**route_closed** | **bool** | A tunnel partner whose door shut when the gateway&#39;s route moved — pair it again to move it. | [optional]
**stale_relay** | **string** |  | [optional]
**tunnel_needs_relink** | **bool** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
