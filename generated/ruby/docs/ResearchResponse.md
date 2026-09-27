# ChatPanel::ResearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ok** | **Boolean** |  |  |
| **question** | **String** |  | [optional] |
| **plan** | [**ResearchPlan**](ResearchPlan.md) |  |  |
| **how** | **String** | How the store was searched, in words. |  |
| **framed_by** | **String** |  | [optional] |
| **count** | **Integer** | Every match in the store, not the rows returned. | [optional] |
| **rows** | [**Array&lt;ResearchResponseRowsInner&gt;**](ResearchResponseRowsInner.md) |  |  |
| **groups** | [**Array&lt;ResearchResponseGroupsInner&gt;**](ResearchResponseGroupsInner.md) |  | [optional] |
| **read** | [**Array&lt;ResearchResponseReadInner&gt;**](ResearchResponseReadInner.md) |  |  |
| **memory** | **Array&lt;String&gt;** |  | [optional] |
| **rounds** | **Integer** |  | [optional] |
| **verdict** | **String** |  | [optional] |
| **ms** | **Integer** |  | [optional] |
| **_next** | [**ResearchFollowUp**](ResearchFollowUp.md) |  |  |
| **attachment** | [**ResearchResponseAttachment**](ResearchResponseAttachment.md) |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **newest** | **Integer** |  | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::ResearchResponse.new(
  ok: null,
  question: null,
  plan: null,
  how: null,
  framed_by: null,
  count: null,
  rows: null,
  groups: null,
  read: null,
  memory: null,
  rounds: null,
  verdict: null,
  ms: null,
  _next: null,
  attachment: null,
  size: null,
  newest: null
)
```

