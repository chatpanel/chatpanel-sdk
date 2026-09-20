
# ReadRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **url** | **kotlin.String** | Absolute http(s) URL of a public page. |  |
| **format** | [**inline**](#Format) |  |  [optional] |
| **maxChars** | **kotlin.Int** | Cut at a section boundary near this length; &#x60;truncated&#x60; says so. |  [optional] |
| **snippet** | **kotlin.String** | A search snippet to stand in for the content when the page cannot be read. |  [optional] |
| **provider** | **kotlin.String** | One of the providers &#x60;GET /v1/capabilities&#x60; lists for &#x60;read&#x60;; 404 otherwise. |  [optional] |
| **budgetMs** | [**java.math.BigDecimal**](java.math.BigDecimal.md) | Refused before fetching if the provider&#39;s record predicts it cannot be met. |  [optional] |


<a id="Format"></a>
## Enum: format
| Name | Value |
| ---- | ----- |
| format | markdown, text |



