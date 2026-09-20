# ChatPanel::ReadSection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The page&#39;s own heading id when it has one, else a slug — cite as &#x60;url#id&#x60;. |  |
| **heading** | **String** |  |  |
| **level** | **Integer** |  |  |
| **offset** | **Integer** | Character offset of the heading line into the content. |  |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ReadSection.new(
  id: null,
  heading: null,
  level: null,
  offset: null
)
```

