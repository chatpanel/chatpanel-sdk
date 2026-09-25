

# AgentExportRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**agent** | **AgentDef** |  |  |
|**to** | [**ToEnum**](#ToEnum) | The dialect to write. |  |
|**overwrite** | **Boolean** | Only ever after a plan reported &#x60;theirs&#x60; and a person agreed. |  [optional] |



## Enum: ToEnum

| Name | Value |
|---- | -----|
| CLAUDE | &quot;claude&quot; |
| CODEX | &quot;codex&quot; |
| CHATPANEL | &quot;chatpanel&quot; |



