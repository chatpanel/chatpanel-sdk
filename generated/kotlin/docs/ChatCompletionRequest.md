
# ChatCompletionRequest

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **model** | **kotlin.String** | A model id from &#x60;GET /v1/models&#x60;; &#x60;claude/opus&#x60; names an agent and its model. |  |
| **messages** | [**kotlin.collections.List&lt;ChatMessage&gt;**](ChatMessage.md) |  |  |
| **stream** | **kotlin.Boolean** |  |  [optional] |
| **streamOptions** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
| **tools** | **kotlin.collections.List&lt;kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;&gt;** |  |  [optional] |
| **toolChoice** | [**kotlin.Any**](.md) |  |  [optional] |
| **temperature** | [**java.math.BigDecimal**](java.math.BigDecimal.md) |  |  [optional] |
| **maxTokens** | **kotlin.Int** |  |  [optional] |



