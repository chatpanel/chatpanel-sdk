# ChatPanel::DetectResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entities** | [**Array&lt;DetectedEntity&gt;**](DetectedEntity.md) |  |  |
| **model** | **String** |  |  |
| **ms** | **Float** |  |  |
| **runtime** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::DetectResponse.new(
  entities: null,
  model: null,
  ms: null,
  runtime: null
)
```

