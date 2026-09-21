# DecideRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | **String** | The text judged. | 
**questions** | [**std::collections::HashMap<String, models::DecideQuestion>**](DecideQuestion.md) | Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*). | 
**model** | Option<**String**> | The model this provider serves; 404 otherwise. | [optional]
**budget_ms** | Option<**f64**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


