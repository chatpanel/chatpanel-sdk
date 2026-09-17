# ChatPanel::ProjectsRecruitRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **by** | **String** |  | [optional] |
| **reach** | **String** |  | [optional] |
| **chat_model** | **String** |  | [optional] |
| **evaluation** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **text** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ProjectsRecruitRequest.new(
  by: null,
  reach: null,
  chat_model: null,
  evaluation: null,
  text: null
)
```

