# LinkPairResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | A phone&#39;s QR text. | [optional] 
**svg** | **String** | The QR as SVG. | [optional] 
**expiresAt** | **Int64** | Epoch ms when the code stops working. | [optional] 
**room** | **String** | The device id it pairs. | [optional] 
**confirmed** | **Bool** | Partner pairings — false is a preview only. | [optional] 
**preview** | [**LinkPartnerPreview**](LinkPartnerPreview.md) |  | [optional] 
**code** | **String** | A partner&#39;s one-time &#x60;cplink1.&#x60; code — give it to the partner through a channel you trust. | [optional] 
**kind** | **String** |  | [optional] 
**partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] 
**scopes** | **[String]** |  | [optional] 
**route** | **String** |  | [optional] 
**host** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


