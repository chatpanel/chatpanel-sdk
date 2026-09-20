# ChatPanel.Sdk.Model.WebSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | [**List&lt;WebSearchResult&gt;**](WebSearchResult.md) |  | 
**Provider** | **string** |  | 
**Ms** | **decimal** |  | 
**Answers** | **List&lt;string&gt;** | SearXNG&#39;s direct answers, when it had any. | [optional] 
**Suggestions** | **List&lt;string&gt;** |  | [optional] 
**Engines** | **List&lt;string&gt;** | What was actually asked. | [optional] 
**Unresponsive** | **List&lt;string&gt;** | SearXNG engines that did not answer. | [optional] 
**Redacted** | **bool** | Layer-1 redaction removed something from the query. | [optional] 
**Query** | **string** | The query as sent, when &#x60;redacted&#x60;. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

