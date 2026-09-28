
# RecordsPage

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  |
| **records** | **kotlin.collections.List&lt;kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;&gt;** | Whole records; a tombstone carries &#x60;deletedAt&#x60;. |  |
| **next** | **kotlin.String** | The cursor for the next page — pass it as &#x60;cursor&#x60; (or, paging by revision, as &#x60;after_rev&#x60;); absent on the last page. |  [optional] |
| **propertySize** | **kotlin.Int** |  |  [optional] |
| **newest** | **kotlin.Long** |  |  [optional] |
| **rev** | **kotlin.Long** | The newest revision (gateway 0.63.0+). Each record carries its own &#x60;rev&#x60; too. |  [optional] |



