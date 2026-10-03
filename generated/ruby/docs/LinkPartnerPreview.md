# ChatPanel::LinkPartnerPreview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partner** | **String** |  |  |
| **scopes** | **Array&lt;String&gt;** |  |  |
| **agents** | **Boolean** |  |  |
| **route** | **String** |  |  |
| **host** | **String** | The one host the partner&#39;s server will connect to. |  |
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
  lines: null
)
```

