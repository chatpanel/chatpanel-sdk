# ChatPanel::ResearchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question** | **String** | The person&#39;s question, in their words. |  |
| **previous** | [**ResearchFollowUp**](ResearchFollowUp.md) |  | [optional] |
| **model** | **String** | A model id to read with (condense long records, check the evidence). Needs the gateway token; without one the parts are quoted as they are. | [optional] |
| **exclude_id** | **String** | A record that is not evidence — the conversation asking. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ResearchRequest.new(
  question: null,
  previous: null,
  model: null,
  exclude_id: null
)
```

