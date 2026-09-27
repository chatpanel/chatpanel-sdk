# ChatPanel::ResearchPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **intent** | **String** |  | [optional] |
| **kind** | **String** | meeting, note, chat — or empty for every kind. | [optional] |
| **names** | **Array&lt;String&gt;** |  | [optional] |
| **terms** | **Array&lt;String&gt;** |  | [optional] |
| **sort** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **since** | **Integer** |  | [optional] |
| **after** | **Integer** |  | [optional] |
| **before** | **Integer** |  | [optional] |
| **group** | **String** | person, month, week, day — or empty. | [optional] |
| **read_full** | **Boolean** |  | [optional] |
| **follow_up** | **Boolean** |  | [optional] |
| **target** | **String** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ResearchPlan.new(
  intent: null,
  kind: null,
  names: null,
  terms: null,
  sort: null,
  limit: null,
  since: null,
  after: null,
  before: null,
  group: null,
  read_full: null,
  follow_up: null,
  target: null
)
```

