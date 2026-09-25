# ChatPanel.Sdk.Model.AgentDef
An agent definition, read from whichever tool's dialect wrote it.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Name** | **string** |  | [optional] 
**Purpose** | **string** |  | [optional] 
**Dialect** | **string** |  | [optional] 
**Source** | **string** | The folder it was read from: chatpanel, claude, codex, agents-dir, external. | [optional] 
**Label** | **string** |  | [optional] 
**Path** | **string** | Relative to the root it was found in. | [optional] 
**Writable** | **bool** |  | [optional] 
**Engine** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**Grants** | **List&lt;string&gt;** |  | [optional] 
**Skills** | **List&lt;string&gt;** |  | [optional] 
**PromptChars** | **int** |  | [optional] 
**Prompt** | **string** | Only on &#x60;GET /agent-defs/{agentId}&#x60;. | [optional] 
**Warnings** | **List&lt;string&gt;** | What the dialect could not map — an unmapped tool is reported, never widened into a grant. | [optional] 
**Scanned** | **Dictionary&lt;string, Object&gt;** |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

