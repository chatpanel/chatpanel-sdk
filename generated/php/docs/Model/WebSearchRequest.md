# WebSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**q** | **string** |  |
**limit** | **int** |  | [optional] [default to 8]
**lang** | **string** | en or en-US; honoured by SearXNG. | [optional]
**site** | **string** | A hostname — the site: operator. | [optional]
**freshness** | **string** | Honoured by SearXNG (time_range); week maps to month. | [optional]
**read** | **int** | Read the top N results in this request. | [optional] [default to 0]
**provider** | **string** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;search&#x60;; 404 otherwise. | [optional]
**budget_ms** | **float** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
