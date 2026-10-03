
# LinkPairResult

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **uri** | **kotlin.String** | A phone&#39;s QR text. |  [optional] |
| **svg** | **kotlin.String** | The QR as SVG. |  [optional] |
| **expiresAt** | **kotlin.Long** | Epoch ms when the code stops working. |  [optional] |
| **room** | **kotlin.String** | The device id it pairs. |  [optional] |
| **confirmed** | **kotlin.Boolean** | Partner pairings — false is a preview only. |  [optional] |
| **preview** | [**LinkPartnerPreview**](LinkPartnerPreview.md) |  |  [optional] |
| **code** | **kotlin.String** | A partner&#39;s one-time &#x60;cplink1.&#x60; code — give it to the partner through a channel you trust. |  [optional] |
| **kind** | **kotlin.String** |  |  [optional] |
| **partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  |  [optional] |
| **scopes** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **route** | **kotlin.String** |  |  [optional] |
| **host** | **kotlin.String** |  |  [optional] |



