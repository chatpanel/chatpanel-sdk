# ChatPanel::PutRecordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | Who is pushing — recorded on every record. | [optional] |
| **at** | **Integer** |  | [optional] |
| **records** | **Array&lt;Hash&gt;** |  | [optional] |
| **entries** | **Array&lt;Hash&gt;** | Sealed backup entries, opened with the stored passphrase. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PutRecordsRequest.new(
  host: null,
  at: null,
  records: null,
  entries: null
)
```

