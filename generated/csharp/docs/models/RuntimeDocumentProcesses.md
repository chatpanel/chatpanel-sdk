# ChatPanel.Sdk.Model.RuntimeDocumentProcesses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**All** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** | every process running for the user — the bridge&#39;s (kind agent | warm | mcp | probe) and the gateway&#39;s own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1) | [optional] 
**LocalMcp** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** | id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env | [optional] 
**Warm** | **Dictionary&lt;string, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

