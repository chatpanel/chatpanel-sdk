# ChatPanel::Skill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **prompt_chars** | **Integer** |  | [optional] |
| **prompt** | **String** | Only on &#x60;GET /skills/{skillId}&#x60;. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::Skill.new(
  id: null,
  name: null,
  description: null,
  prompt_chars: null,
  prompt: null
)
```

