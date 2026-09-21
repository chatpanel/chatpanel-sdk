# RuntimeDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sandbox** | Option<**std::collections::HashMap<String, serde_json::Value>**> | the bridge's /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows) | [optional]
**processes** | Option<[**models::RuntimeDocumentProcesses**](RuntimeDocumentProcesses.md)> |  | [optional]
**containers** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1) | [optional]
**refused** | Option<**Vec<std::collections::HashMap<String, serde_json::Value>>**> | { id, engine, host, at } newest first | [optional]
**bridge** | Option<[**models::RuntimeDocumentBridge**](RuntimeDocumentBridge.md)> |  | [optional]
**engines** | Option<**std::collections::HashMap<String, serde_json::Value>**> | podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note } | [optional]
**services** | Option<**std::collections::HashMap<String, serde_json::Value>**> | Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


