# ChatPanel.Sdk.Model.DecideRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **string** | The text judged. | 
**Questions** | [**Dictionary&lt;string, DecideQuestion&gt;**](DecideQuestion.md) | Keyed by identifier ([A-Za-z_][A-Za-z0-9_]*). | 
**Model** | **string** | The model this provider serves; 404 otherwise. | [optional] 
**BudgetMs** | **decimal** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

