
# KbResearchRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **question** | **kotlin.String** |  |  |
| **answer** | **kotlin.String** | The person&#39;s answer to a previous &#x60;ask&#x60; (a document title, or &#x60;all&#x60;). |  [optional] |
| **ask** | **kotlin.Boolean** | &#x60;false&#x60;: never pause; search every document. |  [optional] |
| **model** | **kotlin.String** | A model (from &#x60;GET /v1/models&#x60;) for the evidence check; token-gated. |  [optional] |
| **previous** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | The previous response&#39;s &#x60;frame&#x60;, for a follow-up. |  [optional] |
| **docs** | **kotlin.collections.List&lt;kotlin.String&gt;** | Only these documents. |  [optional] |



