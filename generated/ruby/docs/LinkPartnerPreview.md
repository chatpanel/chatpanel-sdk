# ChatPanel::LinkPartnerPreview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partner** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **agents** | **Boolean** |  |  |
| **route** | **String** |  |  |
| **host** | **String** | The one host the partner&#39;s server will connect to. |  |
| **folder** | **String** | Where its agents will work (with agents). | [optional] |
| **lines** | **Array&lt;String&gt;** | The confirmation as the owner reads it. |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::LinkPartnerPreview.new(
  partner: null,
  scopes: null,
  agents: null,
  route: null,
  host: null,
  folder: null,
  lines: null
)
```

