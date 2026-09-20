# WebSearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **int** |  |
**url** | **string** |  |
**title** | **string** |  |
**snippet** | **string** |  |
**engine** | **string** | The engine that produced it (SearXNG: the first of &#x60;engines&#x60;; serp: the results page asked). | [optional]
**engines** | **string[]** | SearXNG: every engine that returned it. | [optional]
**score** | **float** | SearXNG&#39;s fused score. | [optional]
**published_date** | **string** |  | [optional]
**read** | [**\ChatPanelSdk\Model\ReadResponse**](ReadResponse.md) | Present for the top &#x60;read&#x60; results. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
