# SearchTrail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | How it ended: `answered` (results came back) · `nothing` (engines answered, none had anything) · `blocked` (every engine asked refused or timed out) · `resting` (nothing was asked: every engine is resting after earlier refusals) · `offline` (every engine failed at the network) · `no-engines`. A client meeting a value it does not know treats it as no results. | 
**asked** | [**Vec<models::SearchTrailAsk>**](SearchTrailAsk.md) | In the order asked: the provider tried first (`searxng`, or each engine and API `serp` asked), then the other provider when the first came back empty. | 
**resting** | [**Vec<models::SearchTrailResting>**](SearchTrailResting.md) | Engines resting after refusing earlier, and until when. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


