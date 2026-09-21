# ChatPanel.Sdk.Model.DecideAnswer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**P** | **decimal** | The probability of &#x60;value&#x60; — read it as one only when the response says &#x60;calibrated&#x60;. | 
**Options** | [**List&lt;DecideAnswerOption&gt;**](DecideAnswerOption.md) | The whole distribution. | 
**Value** | **Object** | choice: the option picked; score: a number on the rubric; noul: a boolean. | 
**Confidence** | **decimal** | The provider&#39;s own confidence, when it reports one. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

