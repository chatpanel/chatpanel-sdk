# ChatPanel::EventsDeleteDryRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **would_delete** | **Integer** | What &#x60;force&#x3D;1&#x60; would delete. |  |
| **host** | **String** |  | [optional] |
| **all** | **Boolean** |  | [optional] |
| **error** | [**EventsDeleteDryRunError**](EventsDeleteDryRunError.md) |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::EventsDeleteDryRun.new(
  ok: null,
  would_delete: null,
  host: null,
  all: null,
  error: null
)
```

