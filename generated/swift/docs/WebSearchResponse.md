# WebSearchResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [WebSearchResult] |  | 
**answers** | **[String]** | SearXNG&#39;s direct answers, when it had any. | [optional] 
**suggestions** | **[String]** |  | [optional] 
**engines** | **[String]** | What was actually asked. | [optional] 
**unresponsive** | **[String]** | SearXNG engines that did not answer. | [optional] 
**redacted** | **Bool** | Layer-1 redaction removed something from the query. | [optional] 
**query** | **String** | The query as sent, when &#x60;redacted&#x60;. | [optional] 
**provider** | **String** |  | 
**ms** | **Double** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


