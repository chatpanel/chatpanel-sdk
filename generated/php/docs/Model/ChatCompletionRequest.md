# ChatCompletionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **string** | A model id from &#x60;GET /v1/models&#x60;; &#x60;claude/opus&#x60; names an agent and its model. |
**messages** | [**\ChatPanelSdk\Model\ChatMessage[]**](ChatMessage.md) |  |
**stream** | **bool** |  | [optional]
**stream_options** | **array<string,mixed>** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional]
**tools** | **array[]** |  | [optional]
**tool_choice** | **mixed** |  | [optional]
**temperature** | **float** |  | [optional]
**max_tokens** | **int** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
