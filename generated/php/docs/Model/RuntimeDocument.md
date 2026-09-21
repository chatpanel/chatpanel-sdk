# RuntimeDocument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sandbox** | **array<string,mixed>** | the bridge&#39;s /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows) | [optional]
**processes** | [**\ChatPanelSdk\Model\RuntimeDocumentProcesses**](RuntimeDocumentProcesses.md) |  | [optional]
**containers** | **array[]** | every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1) | [optional]
**refused** | **array[]** | { id, engine, host, at } newest first | [optional]
**bridge** | [**\ChatPanelSdk\Model\RuntimeDocumentBridge**](RuntimeDocumentBridge.md) |  | [optional]
**engines** | **array<string,mixed>** | podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note } | [optional]
**services** | **array<string,mixed>** | Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
