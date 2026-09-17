# ChatPanel.Sdk.Model.ChatCompletionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Model** | **string** | A model id from &#x60;GET /v1/models&#x60;; &#x60;claude/opus&#x60; names an agent and its model. | 
**Messages** | [**List&lt;ChatMessage&gt;**](ChatMessage.md) |  | 
**Stream** | **bool** |  | [optional] 
**StreamOptions** | **Dictionary&lt;string, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**Tools** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** |  | [optional] 
**ToolChoice** | **Object** |  | [optional] 
**Temperature** | **decimal** |  | [optional] 
**MaxTokens** | **int** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

