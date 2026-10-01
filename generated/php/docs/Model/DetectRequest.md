# DetectRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **string** |  |
**model** | **string** | A model this provider lists; 404 otherwise. | [optional]
**labels** | **string[]** | Keep only these of the model&#39;s labels. | [optional]
**budget_ms** | **float** | Refused before running if the provider&#39;s record predicts it cannot be met. | [optional]
**strict** | **bool** | Return every span the provider finds, second-guessing none (redaction strictness &#39;strict&#39;). A provider that does not filter ignores it. Since gateway 0.76.0. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
