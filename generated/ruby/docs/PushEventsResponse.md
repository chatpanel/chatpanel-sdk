# ChatPanel::PushEventsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **appended** | **Integer** |  |  |
| **duplicates** | **Integer** | Events already held — a retry&#39;s share. |  |
| **rejected** | [**Array&lt;PushEventsResponseRejectedInner&gt;**](PushEventsResponseRejectedInner.md) |  |  |
| **cursor** | **Hash&lt;String, Integer&gt;** | &#x60;{ host: seq }&#x60; — the highest seq held per host. |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::PushEventsResponse.new(
  ok: null,
  appended: null,
  duplicates: null,
  rejected: null,
  cursor: null
)
```

