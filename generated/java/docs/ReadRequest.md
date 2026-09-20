

# ReadRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**url** | **String** | Absolute http(s) URL of a public page. |  |
|**format** | [**FormatEnum**](#FormatEnum) |  |  [optional] |
|**maxChars** | **Integer** | Cut at a section boundary near this length; &#x60;truncated&#x60; says so. |  [optional] |
|**snippet** | **String** | A search snippet to stand in for the content when the page cannot be read. |  [optional] |
|**provider** | **String** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;read&#x60;; 404 otherwise. |  [optional] |
|**budgetMs** | **BigDecimal** | Refused before fetching if the provider&#39;s record predicts it cannot be met. |  [optional] |



## Enum: FormatEnum

| Name | Value |
|---- | -----|
| MARKDOWN | &quot;markdown&quot; |
| TEXT | &quot;text&quot; |



