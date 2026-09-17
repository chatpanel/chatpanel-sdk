

# ChatCompletionRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**model** | **String** | A model id from &#x60;GET /v1/models&#x60;; &#x60;claude/opus&#x60; names an agent and its model. |  |
|**messages** | **List&lt;ChatMessage&gt;** |  |  |
|**stream** | **Boolean** |  |  [optional] |
|**streamOptions** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |
|**tools** | **List&lt;Map&lt;String, Object&gt;&gt;** |  |  [optional] |
|**toolChoice** | **Object** |  |  [optional] |
|**temperature** | **BigDecimal** |  |  [optional] |
|**maxTokens** | **Integer** |  |  [optional] |



