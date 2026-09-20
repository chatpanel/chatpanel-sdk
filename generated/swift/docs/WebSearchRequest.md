# WebSearchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**q** | **String** |  | 
**limit** | **Int** |  | [optional] [default to 8]
**lang** | **String** | en or en-US; honoured by SearXNG. | [optional] 
**site** | **String** | A hostname — the site: operator. | [optional] 
**freshness** | **String** | Honoured by SearXNG (time_range); week maps to month. | [optional] 
**read** | **Int** | Read the top N results in this request. | [optional] [default to 0]
**provider** | **String** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;search&#x60;; 404 otherwise. | [optional] 
**budgetMs** | **Double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


