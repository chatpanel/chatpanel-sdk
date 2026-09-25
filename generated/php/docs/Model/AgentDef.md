# AgentDef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  |
**name** | **string** |  | [optional]
**purpose** | **string** |  | [optional]
**dialect** | **string** |  | [optional]
**source** | **string** | The folder it was read from: chatpanel, claude, codex, agents-dir, external. | [optional]
**label** | **string** |  | [optional]
**path** | **string** | Relative to the root it was found in. | [optional]
**writable** | **bool** |  | [optional]
**engine** | **array<string,mixed>** |  | [optional]
**grants** | **string[]** |  | [optional]
**skills** | **string[]** |  | [optional]
**prompt_chars** | **int** |  | [optional]
**prompt** | **string** | Only on &#x60;GET /agent-defs/{agentId}&#x60;. | [optional]
**warnings** | **string[]** | What the dialect could not map — an unmapped tool is reported, never widened into a grant. | [optional]
**scanned** | **array<string,mixed>** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
