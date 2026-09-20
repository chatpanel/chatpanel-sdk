# DetectRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** |  | 
**model** | Option<**String**> | A model this provider lists; 404 otherwise. | [optional]
**labels** | Option<**Vec<String>**> | Keep only these of the model's labels. | [optional]
**budget_ms** | Option<**f64**> | Refused before running if the provider's record predicts it cannot be met. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


