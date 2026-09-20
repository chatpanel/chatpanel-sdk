# WebSearchResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **Int** |  | 
**url** | **String** |  | 
**title** | **String** |  | 
**snippet** | **String** |  | 
**engine** | **String** | The engine that produced it (SearXNG: the first of &#x60;engines&#x60;; serp: the results page asked). | [optional] 
**engines** | **[String]** | SearXNG: every engine that returned it. | [optional] 
**score** | **Double** | SearXNG&#39;s fused score. | [optional] 
**publishedDate** | **String** |  | [optional] 
**read** | [**ReadResponse**](ReadResponse.md) | Present for the top &#x60;read&#x60; results. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


