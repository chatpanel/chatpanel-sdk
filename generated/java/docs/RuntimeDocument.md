

# RuntimeDocument

The runtime — Settings › Runtime's one document (docs/sandboxing.md S1).

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**sandbox** | **Map&lt;String, Object&gt;** | the bridge&#39;s /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows) |  [optional] |
|**processes** | [**RuntimeDocumentProcesses**](RuntimeDocumentProcesses.md) |  |  [optional] |
|**containers** | **List&lt;Map&lt;String, Object&gt;&gt;** | every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1) |  [optional] |
|**refused** | **List&lt;Map&lt;String, Object&gt;&gt;** | { id, engine, host, at } newest first |  [optional] |
|**bridge** | [**RuntimeDocumentBridge**](RuntimeDocumentBridge.md) |  |  [optional] |
|**engines** | **Map&lt;String, Object&gt;** | podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note } |  [optional] |
|**services** | **Map&lt;String, Object&gt;** | Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+). |  [optional] |



