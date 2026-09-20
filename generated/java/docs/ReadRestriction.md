

# ReadRestriction


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**reason** | [**ReasonEnum**](#ReasonEnum) | &#x60;robots&#x60; and &#x60;tdm&#x60; come only from a hosted (crawler) provider; on the user&#39;s machine the reader is a user agent. |  |
|**detail** | **String** |  |  [optional] |



## Enum: ReasonEnum

| Name | Value |
|---- | -----|
| LOGIN | &quot;login&quot; |
| PAYWALL | &quot;paywall&quot; |
| RATE_LIMITED | &quot;rate_limited&quot; |
| ROBOTS | &quot;robots&quot; |
| TDM | &quot;tdm&quot; |



