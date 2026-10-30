# KbResearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment** | Option<[**models::KbResearchResponseAttachment**](KbResearchResponseAttachment.md)> |  | [optional]
**read** | **Vec<std::collections::HashMap<String, serde_json::Value>>** | What was read, grouped by document in page order (or the outline for a whole-document ask). | 
**hits** | [**Vec<models::KbResearchResponseHitsInner>**](KbResearchResponseHitsInner.md) |  | 
**queries** | **Vec<String>** |  | 
**verdict** | Option<**Verdict**> | The check's answer when a model was given. (enum: true, partly, false, ) | [optional]
**rounds** | **i32** |  | 
**ask** | Option<[**models::KbResearchResponseAsk**](KbResearchResponseAsk.md)> |  | [optional]
**how** | Option<**String**> | How it was searched, in words. | [optional]
**frame** | Option<[**models::KbResearchResponseFrame**](KbResearchResponseFrame.md)> |  | [optional]
**ms** | **f64** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


