# ChatPanel.Sdk.Model.A2ASendRequest
Either `url` or `card` identifies the agent; either `text` or `message` is what to say.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** |  | [optional] 
**Card** | [**AgentCard**](AgentCard.md) |  | [optional] 
**Text** | **string** | Shorthand for a one-part text message. | [optional] 
**Message** | **Dictionary&lt;string, Object&gt;** | A full A2A Message. | [optional] 
**ContextId** | **string** | Groups related interactions. | [optional] 
**TaskId** | **string** | Continues an existing task — how an input or auth stop is answered. | [optional] 
**ReturnImmediately** | **bool** | Do not wait for a terminal or interrupted state. | [optional] 
**Auth** | **string** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

