# RerankRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | 
**documents** | **Vec<String>** |  | 
**top_n** | Option<**i32**> | Return only the best this many. | [optional]
**model** | Option<**String**> | The model this provider serves; 404 otherwise. | [optional]
**budget_ms** | Option<**f64**> | Refused before dialling if the gateway's record predicts it cannot be met. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


