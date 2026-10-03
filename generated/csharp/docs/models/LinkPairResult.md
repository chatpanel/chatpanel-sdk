# ChatPanel.Sdk.Model.LinkPairResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uri** | **string** | A phone&#39;s QR text. | [optional] 
**Svg** | **string** | The QR as SVG. | [optional] 
**ExpiresAt** | **long** | Epoch ms when the code stops working. | [optional] 
**Room** | **string** | The device id it pairs. | [optional] 
**Confirmed** | **bool** | Partner pairings — false is a preview only. | [optional] 
**Preview** | [**LinkPartnerPreview**](LinkPartnerPreview.md) |  | [optional] 
**Code** | **string** | A partner&#39;s one-time &#x60;cplink1.&#x60; code — give it to the partner through a channel you trust. | [optional] 
**Kind** | **string** |  | [optional] 
**Partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] 
**Scopes** | **List&lt;string&gt;** |  | [optional] 
**Route** | **string** |  | [optional] 
**Host** | **string** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

