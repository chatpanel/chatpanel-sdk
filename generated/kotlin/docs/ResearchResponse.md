
# ResearchResponse

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  |
| **plan** | [**ResearchPlan**](ResearchPlan.md) |  |  |
| **how** | **kotlin.String** | How the store was searched, in words. |  |
| **rows** | [**kotlin.collections.List&lt;ResearchResponseRowsInner&gt;**](ResearchResponseRowsInner.md) |  |  |
| **read** | [**kotlin.collections.List&lt;ResearchResponseReadInner&gt;**](ResearchResponseReadInner.md) |  |  |
| **next** | [**ResearchFollowUp**](ResearchFollowUp.md) |  |  |
| **question** | **kotlin.String** |  |  [optional] |
| **framedBy** | [**inline**](#FramedBy) |  |  [optional] |
| **count** | **kotlin.Int** | Every match in the store, not the rows returned. |  [optional] |
| **groups** | [**kotlin.collections.List&lt;ResearchResponseGroupsInner&gt;**](ResearchResponseGroupsInner.md) |  |  [optional] |
| **memory** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **rounds** | **kotlin.Int** |  |  [optional] |
| **verdict** | **kotlin.String** |  |  [optional] |
| **ms** | **kotlin.Int** |  |  [optional] |
| **attachment** | [**ResearchResponseAttachment**](ResearchResponseAttachment.md) |  |  [optional] |
| **propertySize** | **kotlin.Int** |  |  [optional] |
| **newest** | **kotlin.Long** |  |  [optional] |


<a id="FramedBy"></a>
## Enum: framedBy
| Name | Value |
| ---- | ----- |
| framedBy | rules, model |



