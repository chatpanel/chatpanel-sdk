# ResearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  | 
**question** | Option<**String**> |  | [optional]
**plan** | [**models::ResearchPlan**](ResearchPlan.md) |  | 
**how** | **String** | How the store was searched, in words. | 
**framed_by** | Option<**FramedBy**> |  (enum: rules, model) | [optional]
**count** | Option<**i32**> | Every match in the store, not the rows returned. | [optional]
**rows** | [**Vec<models::ResearchResponseRowsInner>**](ResearchResponseRowsInner.md) |  | 
**groups** | Option<[**Vec<models::ResearchResponseGroupsInner>**](ResearchResponseGroupsInner.md)> |  | [optional]
**read** | [**Vec<models::ResearchResponseReadInner>**](ResearchResponseReadInner.md) |  | 
**memory** | Option<**Vec<String>**> |  | [optional]
**rounds** | Option<**i32**> |  | [optional]
**verdict** | Option<**String**> |  | [optional]
**ms** | Option<**i32**> |  | [optional]
**next** | [**models::ResearchFollowUp**](ResearchFollowUp.md) |  | 
**attachment** | Option<[**models::ResearchResponseAttachment**](ResearchResponseAttachment.md)> |  | [optional]
**size** | Option<**i32**> |  | [optional]
**newest** | Option<**i64**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


