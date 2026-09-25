# A2ASendRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **string** |  | [optional]
**card** | [**\ChatPanelSdk\Model\AgentCard**](AgentCard.md) |  | [optional]
**text** | **string** | Shorthand for a one-part text message. | [optional]
**message** | **array<string,mixed>** | A full A2A Message. | [optional]
**context_id** | **string** | Groups related interactions. | [optional]
**task_id** | **string** | Continues an existing task — how an input or auth stop is answered. | [optional]
**return_immediately** | **bool** | Do not wait for a terminal or interrupted state. | [optional]
**auth** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
