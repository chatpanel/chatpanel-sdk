# ChatPanel::ResearchResponseReadInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **title** | **String** |  | [optional] |
| **date** | **Integer** |  | [optional] |
| **parts** | **Integer** |  | [optional] |
| **of** | **Integer** |  | [optional] |
| **speakers** | [**Array&lt;ResearchResponseReadInnerSpeakersInner&gt;**](ResearchResponseReadInnerSpeakersInner.md) |  | [optional] |
| **notes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ResearchResponseReadInner.new(
  id: null,
  title: null,
  date: null,
  parts: null,
  of: null,
  speakers: null,
  notes: null
)
```

