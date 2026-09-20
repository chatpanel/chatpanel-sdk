# ChatPanel.Sdk.Model.WebSearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Rank** | **int** |  | 
**Url** | **string** |  | 
**Title** | **string** |  | 
**Snippet** | **string** |  | 
**Engine** | **string** | The engine that produced it (SearXNG: the first of &#x60;engines&#x60;; serp: the results page asked). | [optional] 
**Engines** | **List&lt;string&gt;** | SearXNG: every engine that returned it. | [optional] 
**Score** | **decimal** | SearXNG&#39;s fused score. | [optional] 
**PublishedDate** | **string** |  | [optional] 
**Read** | [**ReadResponse**](ReadResponse.md) | Present for the top &#x60;read&#x60; results. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

