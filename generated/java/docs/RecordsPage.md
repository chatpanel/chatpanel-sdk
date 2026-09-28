

# RecordsPage


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**ok** | **Boolean** |  |  |
|**records** | **List&lt;Map&lt;String, Object&gt;&gt;** | Whole records; a tombstone carries &#x60;deletedAt&#x60;. |  |
|**next** | **String** | The cursor for the next page — pass it as &#x60;cursor&#x60; (or, paging by revision, as &#x60;after_rev&#x60;); absent on the last page. |  [optional] |
|**size** | **Integer** |  |  [optional] |
|**newest** | **Long** |  |  [optional] |
|**rev** | **Long** | The newest revision (gateway 0.63.0+). Each record carries its own &#x60;rev&#x60; too. |  [optional] |



