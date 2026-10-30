# KbResearchResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment** | [**KbResearchResponseAttachment**](KbResearchResponseAttachment.md) |  | [optional] 
**read** | [[String: JSONValue]] | What was read, grouped by document in page order (or the outline for a whole-document ask). | 
**hits** | [KbResearchResponseHitsInner] |  | 
**queries** | **[String]** |  | 
**verdict** | **String** | The check&#39;s answer when a model was given. | [optional] 
**rounds** | **Int** |  | 
**ask** | [**KbResearchResponseAsk**](KbResearchResponseAsk.md) |  | [optional] 
**how** | **String** | How it was searched, in words. | [optional] 
**frame** | [**KbResearchResponseFrame**](KbResearchResponseFrame.md) |  | [optional] 
**ms** | **Double** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


