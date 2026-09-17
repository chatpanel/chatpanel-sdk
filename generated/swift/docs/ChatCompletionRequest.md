# ChatCompletionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** | A model id from &#x60;GET /v1/models&#x60;; &#x60;claude/opus&#x60; names an agent and its model. | 
**messages** | [ChatMessage] |  | 
**stream** | **Bool** |  | [optional] 
**streamOptions** | **[String: JSONValue]** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 
**tools** | [Dictionary] |  | [optional] 
**toolChoice** | **JSONValue** |  | [optional] 
**temperature** | **Double** |  | [optional] 
**maxTokens** | **Int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


