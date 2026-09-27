

# ResearchResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**question** | **String** |  |  [optional] |
|**plan** | **ResearchPlan** |  |  |
|**how** | **String** | How the store was searched, in words. |  |
|**framedBy** | [**FramedByEnum**](#FramedByEnum) |  |  [optional] |
|**count** | **Integer** | Every match in the store, not the rows returned. |  [optional] |
|**rows** | **List&lt;ResearchResponseRowsInner&gt;** |  |  |
|**groups** | [**List&lt;ResearchResponseGroupsInner&gt;**](ResearchResponseGroupsInner.md) |  |  [optional] |
|**read** | [**List&lt;ResearchResponseReadInner&gt;**](ResearchResponseReadInner.md) |  |  |
|**memory** | **List&lt;String&gt;** |  |  [optional] |
|**rounds** | **Integer** |  |  [optional] |
|**verdict** | **String** |  |  [optional] |
|**ms** | **Integer** |  |  [optional] |
|**next** | [**ResearchFollowUp**](ResearchFollowUp.md) |  |  |
|**attachment** | [**ResearchResponseAttachment**](ResearchResponseAttachment.md) |  |  [optional] |
|**size** | **Integer** |  |  [optional] |
|**newest** | **Long** |  |  [optional] |



## Enum: FramedByEnum

| Name | Value |
|---- | -----|
| RULES | &quot;rules&quot; |
| MODEL | &quot;model&quot; |



