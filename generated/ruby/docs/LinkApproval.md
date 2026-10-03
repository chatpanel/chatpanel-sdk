# ChatPanel::LinkApproval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **partner** | **String** | The partner whose agent asks. |  |
| **device** | **String** |  | [optional] |
| **conversation** | **String** | The partner&#39;s conversation (&#x60;partner.&lt;device&gt;.&lt;thread&gt;&#x60;), or the turn&#39;s own. | [optional] |
| **title** | **String** | Who asks and what kind of action — \&quot;Atlas’s agent asks — run a command?\&quot; |  |
| **body** | **String** | The command |  |
| **tool** | **String** |  | [optional] |
| **created_at** | **Integer** |  |  |
| **expires_at** | **Integer** | When it becomes a no. |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::LinkApproval.new(
  id: null,
  partner: null,
  device: null,
  conversation: null,
  title: null,
  body: null,
  tool: null,
  created_at: null,
  expires_at: null
)
```

