# ResearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  |
**question** | **string** |  | [optional]
**plan** | [**\ChatPanelSdk\Model\ResearchPlan**](ResearchPlan.md) |  |
**how** | **string** | How the store was searched, in words. |
**framed_by** | **string** |  | [optional]
**count** | **int** | Every match in the store, not the rows returned. | [optional]
**rows** | [**\ChatPanelSdk\Model\ResearchResponseRowsInner[]**](ResearchResponseRowsInner.md) |  |
**groups** | [**\ChatPanelSdk\Model\ResearchResponseGroupsInner[]**](ResearchResponseGroupsInner.md) |  | [optional]
**read** | [**\ChatPanelSdk\Model\ResearchResponseReadInner[]**](ResearchResponseReadInner.md) |  |
**memory** | **string[]** |  | [optional]
**rounds** | **int** |  | [optional]
**verdict** | **string** |  | [optional]
**ms** | **int** |  | [optional]
**next** | [**\ChatPanelSdk\Model\ResearchFollowUp**](ResearchFollowUp.md) |  |
**attachment** | [**\ChatPanelSdk\Model\ResearchResponseAttachment**](ResearchResponseAttachment.md) |  | [optional]
**size** | **int** |  | [optional]
**newest** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
