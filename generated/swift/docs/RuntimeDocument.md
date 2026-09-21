# RuntimeDocument

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sandbox** | **[String: JSONValue]** | the bridge&#39;s /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows) | [optional] 
**processes** | [**RuntimeDocumentProcesses**](RuntimeDocumentProcesses.md) |  | [optional] 
**containers** | [Dictionary] | every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1) | [optional] 
**refused** | [Dictionary] | { id, engine, host, at } newest first | [optional] 
**bridge** | [**RuntimeDocumentBridge**](RuntimeDocumentBridge.md) |  | [optional] 
**engines** | **[String: JSONValue]** | podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note } | [optional] 
**services** | **[String: JSONValue]** | Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


