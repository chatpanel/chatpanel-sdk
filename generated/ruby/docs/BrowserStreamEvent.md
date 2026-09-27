# ChatPanel::BrowserStreamEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  |  |
| **session** | **String** | On &#x60;hello&#x60;. | [optional] |
| **version** | **String** | On &#x60;hello&#x60; — the gateway&#39;s. | [optional] |
| **id** | **String** | On &#x60;call&#x60; and &#x60;cancel&#x60;. | [optional] |
| **action** | **String** |  | [optional] |
| **args** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **task** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::BrowserStreamEvent.new(
  event: null,
  session: null,
  version: null,
  id: null,
  action: null,
  args: null,
  task: null
)
```

