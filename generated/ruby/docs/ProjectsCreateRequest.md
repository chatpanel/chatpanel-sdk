# ChatPanel::ProjectsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **project** | **Hash&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] |
| **by** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ProjectsCreateRequest.new(
  id: null,
  project: null,
  by: null
)
```

