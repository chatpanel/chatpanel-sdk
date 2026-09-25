# AgentDef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | Option<**String**> |  | [optional]
**purpose** | Option<**String**> |  | [optional]
**dialect** | Option<**Dialect**> |  (enum: chatpanel, claude, codex, a2a) | [optional]
**source** | Option<**String**> | The folder it was read from: chatpanel, claude, codex, agents-dir, external. | [optional]
**label** | Option<**String**> |  | [optional]
**path** | Option<**String**> | Relative to the root it was found in. | [optional]
**writable** | Option<**bool**> |  | [optional]
**engine** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]
**grants** | Option<**Vec<String>**> |  | [optional]
**skills** | Option<**Vec<String>**> |  | [optional]
**prompt_chars** | Option<**i32**> |  | [optional]
**prompt** | Option<**String**> | Only on `GET /agent-defs/{agentId}`. | [optional]
**warnings** | Option<**Vec<String>**> | What the dialect could not map — an unmapped tool is reported, never widened into a grant. | [optional]
**scanned** | Option<**std::collections::HashMap<String, serde_json::Value>**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


