
# PutRecordsResponse

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **ok** | **kotlin.Boolean** |  |  |
| **written** | **kotlin.Int** |  |  |
| **ids** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **&#x60;sealed&#x60;** | **kotlin.Int** |  |  [optional] |
| **propertySize** | **kotlin.Int** |  |  [optional] |
| **revs** | **kotlin.collections.Map&lt;kotlin.String, kotlin.Long&gt;** | Each written record&#39;s new revision (gateway 0.63.0+). |  [optional] |
| **conflicts** | **kotlin.collections.List&lt;kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;&gt;** | The current record for each one sent with a &#x60;baseRev&#x60; that is no longer current — merge and send again. |  [optional] |
| **rev** | **kotlin.Long** | The newest revision after this write. |  [optional] |



