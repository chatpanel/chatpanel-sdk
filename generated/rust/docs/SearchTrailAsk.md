# SearchTrailAsk

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The engine or provider asked — `searxng`, `serp`, `duckduckgo`, `startpage`, `bing`, `api:<id>`. | 
**outcome** | **String** | `answered` · `empty` (answered, found nothing) · `refused` (a refusing status, a timeout or no answer at all). | 
**found** | Option<**i32**> | How many results it returned. | [optional]
**status** | Option<**i32**> | The HTTP status of a refusal (429, 403, …), when there was one. | [optional]
**timed_out** | Option<**bool**> | It did not answer within its share of the budget. | [optional]
**network** | Option<**bool**> | It failed at the network — no status at all. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


