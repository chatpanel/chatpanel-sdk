# ChatPanel::LinkPairResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | A phone&#39;s QR text. | [optional] |
| **svg** | **String** | The QR as SVG. | [optional] |
| **expires_at** | **Integer** | Epoch ms when the code stops working. | [optional] |
| **room** | **String** | The device id it pairs. | [optional] |
| **confirmed** | **Boolean** | Partner pairings — false is a preview only. | [optional] |
| **preview** | [**LinkPartnerPreview**](LinkPartnerPreview.md) |  | [optional] |
| **code** | **String** | A partner&#39;s one-time &#x60;cplink1.&#x60; code — give it to the partner through a channel you trust. | [optional] |
| **kind** | **String** |  | [optional] |
| **partner** | [**LinkPairResultPartner**](LinkPairResultPartner.md) |  | [optional] |
| **scopes** | **Array&lt;String&gt;** |  | [optional] |
| **route** | **String** |  | [optional] |
| **host** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::LinkPairResult.new(
  uri: null,
  svg: null,
  expires_at: null,
  room: null,
  confirmed: null,
  preview: null,
  code: null,
  kind: null,
  partner: null,
  scopes: null,
  route: null,
  host: null
)
```

