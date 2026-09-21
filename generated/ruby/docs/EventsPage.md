# ChatPanel::EventsPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **events** | [**Array&lt;CloudEvent&gt;**](CloudEvent.md) |  |  |
| **cursor** | **Hash&lt;String, Integer&gt;** | Pass back as &#x60;cursor&#x60; for the next page. |  |
| **more** | **Boolean** |  |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::EventsPage.new(
  ok: null,
  events: null,
  cursor: null,
  more: null
)
```

