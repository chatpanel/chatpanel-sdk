# LinkPairResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | Option<**String**> | A phone's QR text. | [optional]
**svg** | Option<**String**> | The QR as SVG. | [optional]
**expires_at** | Option<**i64**> | Epoch ms when the code stops working. | [optional]
**room** | Option<**String**> | The device id it pairs. | [optional]
**confirmed** | Option<**bool**> | Partner pairings — false is a preview only. | [optional]
**preview** | Option<[**models::LinkPartnerPreview**](LinkPartnerPreview.md)> |  | [optional]
**code** | Option<**String**> | A partner's one-time `cplink1.` code — give it to the partner through a channel you trust. | [optional]
**kind** | Option<**String**> |  | [optional]
**partner** | Option<[**models::LinkPairResultPartner**](LinkPairResultPartner.md)> |  | [optional]
**scopes** | Option<**Vec<String>**> |  | [optional]
**route** | Option<**String**> |  | [optional]
**host** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


