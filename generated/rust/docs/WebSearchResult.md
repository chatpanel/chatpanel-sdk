# WebSearchResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rank** | **i32** |  | 
**url** | **String** |  | 
**title** | **String** |  | 
**snippet** | **String** |  | 
**engine** | Option<**String**> | The engine that produced it (SearXNG: the first of `engines`; serp: the engine asked — `duckduckgo`, `startpage`, `bing`, or `api:<id>` for a search API such as `api:exa`). Since gateway 0.79.0 every result carries it; the provider id when nothing finer is known. | [optional]
**via** | Option<**String**> | The kind of door it came through: `gateway` · `searxng` · `api` (a search API) · `page` (a results page read) · `browser` (the person's own browser). A client meeting a value it does not know shows it as it is. Since gateway 0.79.0. | [optional]
**engines** | Option<**Vec<String>**> | SearXNG: every engine that returned it. | [optional]
**score** | Option<**f64**> | SearXNG's fused score. | [optional]
**published_date** | Option<**String**> |  | [optional]
**read** | Option<[**models::ReadResponse**](ReadResponse.md)> | Present for the top `read` results. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


