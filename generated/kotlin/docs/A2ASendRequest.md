
# A2ASendRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **url** | **kotlin.String** |  |  [optional] |
| **card** | [**AgentCard**](AgentCard.md) |  |  [optional] |
| **text** | **kotlin.String** | Shorthand for a one-part text message. |  [optional] |
| **message** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A full A2A Message. |  [optional] |
| **contextId** | **kotlin.String** | Groups related interactions. |  [optional] |
| **taskId** | **kotlin.String** | Continues an existing task — how an input or auth stop is answered. |  [optional] |
| **returnImmediately** | **kotlin.Boolean** | Do not wait for a terminal or interrupted state. |  [optional] |
| **auth** | **kotlin.String** |  |  [optional] |



