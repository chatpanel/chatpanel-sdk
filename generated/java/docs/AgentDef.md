

# AgentDef

An agent definition, read from whichever tool's dialect wrote it.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  |
|**name** | **String** |  |  [optional] |
|**purpose** | **String** |  |  [optional] |
|**dialect** | [**DialectEnum**](#DialectEnum) |  |  [optional] |
|**source** | **String** | The folder it was read from: chatpanel, claude, codex, agents-dir, external. |  [optional] |
|**label** | **String** |  |  [optional] |
|**path** | **String** | Relative to the root it was found in. |  [optional] |
|**writable** | **Boolean** |  |  [optional] |
|**engine** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**grants** | **List&lt;String&gt;** |  |  [optional] |
|**skills** | **List&lt;String&gt;** |  |  [optional] |
|**promptChars** | **Integer** |  |  [optional] |
|**prompt** | **String** | Only on &#x60;GET /agent-defs/{agentId}&#x60;. |  [optional] |
|**warnings** | **List&lt;String&gt;** | What the dialect could not map — an unmapped tool is reported, never widened into a grant. |  [optional] |
|**scanned** | **Map&lt;String, Object&gt;** |  |  [optional] |



## Enum: DialectEnum

| Name | Value |
|---- | -----|
| CHATPANEL | &quot;chatpanel&quot; |
| CLAUDE | &quot;claude&quot; |
| CODEX | &quot;codex&quot; |
| A2A | &quot;a2a&quot; |



