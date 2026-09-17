# ChatPanel::IngestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upserts** | [**Array&lt;IngestRequestUpsertsInner&gt;**](IngestRequestUpsertsInner.md) |  | [optional] |
| **removes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::IngestRequest.new(
  upserts: null,
  removes: null
)
```

