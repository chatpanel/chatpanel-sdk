# ChatPanel.Sdk.Model.DetectRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Text** | **string** |  | 
**Model** | **string** | A model this provider lists; 404 otherwise. | [optional] 
**Labels** | **List&lt;string&gt;** | Keep only these of the model&#39;s labels. | [optional] 
**BudgetMs** | **decimal** | Refused before running if the provider&#39;s record predicts it cannot be met. | [optional] 
**Strict** | **bool** | Return every span the provider finds, second-guessing none (redaction strictness &#39;strict&#39;). A provider that does not filter ignores it. Since gateway 0.76.0. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

