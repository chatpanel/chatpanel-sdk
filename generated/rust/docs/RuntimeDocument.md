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
**in_process** | Option<**std::collections::HashMap<String, serde_json::Value>**> | rerank and decide answered by the gateway itself, the default since gateway 0.57.0 (a container service above is the alternative): per capability { provider (embedded | container | remote | none — who serves it now), model (when embedded), models: [{ id, label, mb, languages, note }] (the curated list a person may pick; the first is the default), threads, state (idle | downloading | loading | ready | down), progress?, error? }. Pick one with POST /config capabilities.<id> { provider: 'embedded', model } or turn it off with { provider: 'none' }. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


