

# WebSearchRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**q** | **String** |  |  |
|**limit** | **Integer** |  |  [optional] |
|**lang** | **String** | en or en-US; honoured by SearXNG. |  [optional] |
|**site** | **String** | A hostname — the site: operator. |  [optional] |
|**freshness** | [**FreshnessEnum**](#FreshnessEnum) | Honoured by SearXNG (time_range); week maps to month. |  [optional] |
|**read** | **Integer** | Read the top N results in this request. |  [optional] |
|**provider** | **String** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;search&#x60;; 404 otherwise. |  [optional] |
|**budgetMs** | **BigDecimal** |  |  [optional] |



## Enum: FreshnessEnum

| Name | Value |
|---- | -----|
| DAY | &quot;day&quot; |
| WEEK | &quot;week&quot; |
| MONTH | &quot;month&quot; |
| YEAR | &quot;year&quot; |



