# LinkPairResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **string** | A phone&#39;s QR text. | [optional]
**svg** | **string** | The QR as SVG. | [optional]
**expires_at** | **int** | Epoch ms when the code stops working. | [optional]
**room** | **string** | The device id it pairs. | [optional]
**confirmed** | **bool** | Partner pairings — false is a preview only. | [optional]
**preview** | [**\ChatPanelSdk\Model\LinkPartnerPreview**](LinkPartnerPreview.md) |  | [optional]
**code** | **string** | A partner&#39;s one-time &#x60;cplink1.&#x60; code — give it to the partner through a channel you trust. | [optional]
**kind** | **string** |  | [optional]
**partner** | [**\ChatPanelSdk\Model\LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional]
**scopes** | **string[]** |  | [optional]
**route** | **string** |  | [optional]
**host** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
