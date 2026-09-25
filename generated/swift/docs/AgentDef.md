# AgentDef

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | [optional] 
**purpose** | **String** |  | [optional] 
**dialect** | **String** |  | [optional] 
**source** | **String** | The folder it was read from: chatpanel, claude, codex, agents-dir, external. | [optional] 
**label** | **String** |  | [optional] 
**path** | **String** | Relative to the root it was found in. | [optional] 
**writable** | **Bool** |  | [optional] 
**engine** | **[String: JSONValue]** |  | [optional] 
**grants** | **[String]** |  | [optional] 
**skills** | **[String]** |  | [optional] 
**promptChars** | **Int** |  | [optional] 
**prompt** | **String** | Only on &#x60;GET /agent-defs/{agentId}&#x60;. | [optional] 
**warnings** | **[String]** | What the dialect could not map — an unmapped tool is reported, never widened into a grant. | [optional] 
**scanned** | **[String: JSONValue]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


