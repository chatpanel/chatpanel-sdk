# ChatPanel::A2aCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The agent&#39;s origin, or a card URL outright. |  |
| **force** | **Boolean** | Skip the TTL and revalidate — the ETag is still sent. | [optional] |
| **forget** | **Boolean** | Drop the cached card first. | [optional] |
| **auth** | **String** | An Authorization header value for agents that need one. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::A2aCardRequest.new(
  url: null,
  force: null,
  forget: null,
  auth: null
)
```

