# WebSearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **i32** |  | 
**url** | **String** |  | 
**title** | **String** |  | 
**snippet** | **String** |  | 
**engine** | Option<**String**> | The engine that produced it (SearXNG: the first of `engines`; serp: the results page asked). | [optional]
**engines** | Option<**Vec<String>**> | SearXNG: every engine that returned it. | [optional]
**score** | Option<**f64**> | SearXNG's fused score. | [optional]
**published_date** | Option<**String**> |  | [optional]
**read** | Option<[**models::ReadResponse**](ReadResponse.md)> | Present for the top `read` results. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


