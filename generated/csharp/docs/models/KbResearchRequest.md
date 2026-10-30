# ChatPanel.Sdk.Model.KbResearchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Question** | **string** |  | 
**Answer** | **string** | The person&#39;s answer to a previous &#x60;ask&#x60; (a document title, or &#x60;all&#x60;). | [optional] 
**Ask** | **bool** | &#x60;false&#x60;: never pause; search every document. | [optional] [default to true]
**Model** | **string** | A model (from &#x60;GET /v1/models&#x60;) for the evidence check; token-gated. | [optional] 
**Previous** | **Dictionary&lt;string, Object&gt;** | The previous response&#39;s &#x60;frame&#x60;, for a follow-up. | [optional] 
**Docs** | **List&lt;string&gt;** | Only these documents. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

