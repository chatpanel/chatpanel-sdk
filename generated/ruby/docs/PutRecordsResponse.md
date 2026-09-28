# ChatPanel::PutRecordsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **written** | **Integer** |  |  |
| **ids** | **Array&lt;String&gt;** |  | [optional] |
| **sealed** | **Integer** |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **revs** | **Hash&lt;String, Integer&gt;** | Each written record&#39;s new revision (gateway 0.63.0+). | [optional] |
| **conflicts** | **Array&lt;Hash&gt;** | The current record for each one sent with a &#x60;baseRev&#x60; that is no longer current — merge and send again. | [optional] |
| **merged** | **Array&lt;Hash&gt;** | Gateway 0.64.0+, with &#x60;merge: true&#x60;: each note merged from an outdated copy, as stored (with its new &#x60;rev&#x60;) — replace yours with it. | [optional] |
| **rev** | **Integer** | The newest revision after this write. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PutRecordsResponse.new(
  ok: null,
  written: null,
  ids: null,
  sealed: null,
  size: null,
  revs: null,
  conflicts: null,
  merged: null,
  rev: null
)
```

