# DecideAnswer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | Option<**serde_json::Value**> | choice: the option picked; score: a number on the rubric; noul: a boolean. | 
**p** | **f64** | The probability of `value` — read it as one only when the response says `calibrated`. | 
**options** | [**Vec<models::DecideAnswerOption>**](DecideAnswerOption.md) | The whole distribution. | 
**confidence** | Option<**f64**> | The provider's own confidence, when it reports one. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


