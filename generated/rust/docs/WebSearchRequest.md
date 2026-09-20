# WebSearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**q** | **String** |  | 
**limit** | Option<**i32**> |  | [optional][default to 8]
**lang** | Option<**String**> | en or en-US; honoured by SearXNG. | [optional]
**site** | Option<**String**> | A hostname — the site: operator. | [optional]
**freshness** | Option<**Freshness**> | Honoured by SearXNG (time_range); week maps to month. (enum: day, week, month, year) | [optional]
**read** | Option<**i32**> | Read the top N results in this request. | [optional][default to 0]
**provider** | Option<**String**> | One of the providers `GET /v1/capabilities` lists for `search`; 404 otherwise. | [optional]
**budget_ms** | Option<**f64**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


