# ChatPanel::PutRecordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | Who is pushing — recorded on every record. | [optional] |
| **at** | **Integer** |  | [optional] |
| **records** | **Array&lt;Hash&gt;** | Whole records or tombstones. A record with &#x60;baseRev&#x60; (gateway 0.63.0+) is written only while the stored one is at that revision (0 &#x3D; none stored); otherwise it comes back in &#x60;conflicts&#x60;. Without it the newer stamp wins. | [optional] |
| **entries** | **Array&lt;Hash&gt;** | Sealed backup entries, opened with the stored passphrase. | [optional] |
| **merge** | **Boolean** | Gateway 0.64.0+: a NOTE sent with a &#x60;baseRev&#x60; that is no longer current is merged against that version (title, tags and text three-way) instead of coming back in &#x60;conflicts&#x60;; the result is in &#x60;merged&#x60;. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PutRecordsRequest.new(
  host: null,
  at: null,
  records: null,
  entries: null,
  merge: null
)
```

