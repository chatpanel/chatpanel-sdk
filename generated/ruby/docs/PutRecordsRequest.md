# ChatPanel::PutRecordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | Who is pushing — recorded on every record. | [optional] |
| **at** | **Integer** |  | [optional] |
| **records** | **Array&lt;Hash&gt;** | Whole records or tombstones. A record with &#x60;baseRev&#x60; (gateway 0.63.0+) is written only while the stored one is at that revision (0 &#x3D; none stored); otherwise it comes back in &#x60;conflicts&#x60;. Without it the newer stamp wins. | [optional] |
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

