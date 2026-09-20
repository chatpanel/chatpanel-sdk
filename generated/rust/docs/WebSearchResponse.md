# WebSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**Vec<models::WebSearchResult>**](WebSearchResult.md) |  | 
**answers** | Option<**Vec<String>**> | SearXNG's direct answers, when it had any. | [optional]
**suggestions** | Option<**Vec<String>**> |  | [optional]
**engines** | Option<**Vec<String>**> | What was actually asked. | [optional]
**unresponsive** | Option<**Vec<String>**> | SearXNG engines that did not answer. | [optional]
**redacted** | Option<**bool**> | Layer-1 redaction removed something from the query. | [optional]
**query** | Option<**String**> | The query as sent, when `redacted`. | [optional]
**provider** | **String** |  | 
**ms** | **f64** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


