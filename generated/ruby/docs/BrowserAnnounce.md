# ChatPanel::BrowserAnnounce

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session** | **String** |  |  |
| **browser** | [**BrowserInfo**](BrowserInfo.md) |  | [optional] |
| **extension** | **String** |  | [optional] |
| **spec** | **Hash&lt;String, Object&gt;** |  |  |
| **system** | **String** |  | [optional] |
| **actions** | **Array&lt;Hash&lt;String, Object&gt;&gt;** | Optional — the full specs behind the dispatcher. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::BrowserAnnounce.new(
  session: null,
  browser: null,
  extension: null,
  spec: null,
  system: null,
  actions: null
)
```

