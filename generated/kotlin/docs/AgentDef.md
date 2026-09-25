
# AgentDef

## Properties
| Name | Type | Description | Notes |
| ------------ | ------------- | ------------- | ------------- |
| **id** | **kotlin.String** |  |  |
| **name** | **kotlin.String** |  |  [optional] |
| **purpose** | **kotlin.String** |  |  [optional] |
| **dialect** | [**inline**](#Dialect) |  |  [optional] |
| **source** | **kotlin.String** | The folder it was read from: chatpanel, claude, codex, agents-dir, external. |  [optional] |
| **label** | **kotlin.String** |  |  [optional] |
| **path** | **kotlin.String** | Relative to the root it was found in. |  [optional] |
| **writable** | **kotlin.Boolean** |  |  [optional] |
| **engine** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) |  |  [optional] |
| **grants** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **skills** | **kotlin.collections.List&lt;kotlin.String&gt;** |  |  [optional] |
| **promptChars** | **kotlin.Int** |  |  [optional] |
| **prompt** | **kotlin.String** | Only on &#x60;GET /agent-defs/{agentId}&#x60;. |  [optional] |
| **warnings** | **kotlin.collections.List&lt;kotlin.String&gt;** | What the dialect could not map — an unmapped tool is reported, never widened into a grant. |  [optional] |
| **scanned** | [**kotlin.collections.Map&lt;kotlin.String, kotlin.Any&gt;**](kotlin.Any.md) |  |  [optional] |


<a id="Dialect"></a>
## Enum: dialect
| Name | Value |
| ---- | ----- |
| dialect | chatpanel, claude, codex, a2a |



