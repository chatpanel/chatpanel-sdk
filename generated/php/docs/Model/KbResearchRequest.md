# KbResearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**question** | **string** |  |
**answer** | **string** | The person&#39;s answer to a previous &#x60;ask&#x60; (a document title, or &#x60;all&#x60;). | [optional]
**ask** | **bool** | &#x60;false&#x60;: never pause; search every document. | [optional] [default to true]
**model** | **string** | A model (from &#x60;GET /v1/models&#x60;) for the evidence check; token-gated. | [optional]
**previous** | **array<string,mixed>** | The previous response&#39;s &#x60;frame&#x60;, for a follow-up. | [optional]
**docs** | **string[]** | Only these documents. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
