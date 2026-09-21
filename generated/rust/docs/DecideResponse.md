# DecideResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**answers** | [**std::collections::HashMap<String, models::DecideAnswer>**](DecideAnswer.md) | One per question asked, under the same key. | 
**model** | **String** |  | 
**ms** | **f64** |  | 
**calibrated** | Option<**bool**> | Whether `p` is a calibrated probability. false for a zero-shot NLI concentration. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


