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
**in_process** | **array<string,mixed>** | rerank and decide answered by the gateway itself, the default since gateway 0.57.0 (a container service above is the alternative): per capability { provider (embedded | container | remote | none — who serves it now), model (when embedded), models: [{ id, label, mb, languages, note }] (the curated list a person may pick; the first is the default), threads, state (idle | downloading | loading | ready | down), progress?, error? }. Pick one with POST /config capabilities.&lt;id&gt; { provider: &#39;embedded&#39;, model } or turn it off with { provider: &#39;none&#39; }. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
