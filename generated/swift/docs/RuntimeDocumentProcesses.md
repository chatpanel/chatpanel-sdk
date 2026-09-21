# RuntimeDocumentProcesses

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | [Dictionary] | every process running for the user — the bridge&#39;s (kind agent | warm | mcp | probe) and the gateway&#39;s own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1) | [optional] 
**localMcp** | [Dictionary] | id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env | [optional] 
**warm** | **[String: JSONValue]** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


