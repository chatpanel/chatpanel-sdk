# ChatPanel.Sdk.Model.WebSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Q** | **string** |  | 
**Limit** | **int** |  | [optional] [default to 8]
**Lang** | **string** | en or en-US; honoured by SearXNG. | [optional] 
**Site** | **string** | A hostname — the site: operator. | [optional] 
**Freshness** | **string** | Honoured by SearXNG (time_range); week maps to month. | [optional] 
**Read** | **int** | Read the top N results in this request. | [optional] [default to 0]
**Provider** | **string** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;search&#x60;; 404 otherwise. | [optional] 
**BudgetMs** | **decimal** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

