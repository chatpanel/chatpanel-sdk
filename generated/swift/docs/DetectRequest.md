# DetectRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** |  | 
**model** | **String** | A model this provider lists; 404 otherwise. | [optional] 
**labels** | **[String]** | Keep only these of the model&#39;s labels. | [optional] 
**budgetMs** | **Double** | Refused before running if the provider&#39;s record predicts it cannot be met. | [optional] 
**strict** | **Bool** | Return every span the provider finds, second-guessing none (redaction strictness &#39;strict&#39;). A provider that does not filter ignores it. Since gateway 0.76.0. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


