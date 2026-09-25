

# A2ASendRequest

Either `url` or `card` identifies the agent; either `text` or `message` is what to say.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**url** | **String** |  |  [optional] |
|**card** | **AgentCard** |  |  [optional] |
|**text** | **String** | Shorthand for a one-part text message. |  [optional] |
|**message** | **Map&lt;String, Object&gt;** | A full A2A Message. |  [optional] |
|**contextId** | **String** | Groups related interactions. |  [optional] |
|**taskId** | **String** | Continues an existing task — how an input or auth stop is answered. |  [optional] |
|**returnImmediately** | **Boolean** | Do not wait for a terminal or interrupted state. |  [optional] |
|**auth** | **String** |  |  [optional] |



