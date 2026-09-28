# RecordsPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ok** | **bool** |  |
**records** | **array[]** | Whole records; a tombstone carries &#x60;deletedAt&#x60;. |
**next** | **string** | The cursor for the next page — pass it as &#x60;cursor&#x60; (or, paging by revision, as &#x60;after_rev&#x60;); absent on the last page. | [optional]
**size** | **int** |  | [optional]
**newest** | **int** |  | [optional]
**rev** | **int** | The newest revision (gateway 0.63.0+). Each record carries its own &#x60;rev&#x60; too. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
