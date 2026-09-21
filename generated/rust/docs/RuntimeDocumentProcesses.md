# RuntimeDocumentProcesses

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | every process running for the user — the bridge's (kind agent | warm | mcp | probe) and the gateway's own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1) | [optional]
**local_mcp** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env | [optional]
**warm** | Option<**std::collections::HashMap<String, serde_json::Value>**> | A domain object whose shape is owned by `@chatpanel/events`; the SDK carries it as-is. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


