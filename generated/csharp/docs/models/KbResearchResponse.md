# ChatPanel.Sdk.Model.KbResearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Read** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** | What was read, grouped by document in page order (or the outline for a whole-document ask). | 
**Hits** | [**List&lt;KbResearchResponseHitsInner&gt;**](KbResearchResponseHitsInner.md) |  | 
**Queries** | **List&lt;string&gt;** |  | 
**Rounds** | **int** |  | 
**Ms** | **decimal** |  | 
**Attachment** | [**KbResearchResponseAttachment**](KbResearchResponseAttachment.md) |  | [optional] 
**Verdict** | **string** | The check&#39;s answer when a model was given. | [optional] 
**Ask** | [**KbResearchResponseAsk**](KbResearchResponseAsk.md) |  | [optional] 
**How** | **string** | How it was searched, in words. | [optional] 
**Frame** | [**KbResearchResponseFrame**](KbResearchResponseFrame.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

