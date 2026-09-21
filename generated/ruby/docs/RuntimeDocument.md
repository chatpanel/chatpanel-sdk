# ChatPanel::RuntimeDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sandbox** | **Hash&lt;String, Object&gt;** | the bridge&#39;s /health.sandbox: enabled, mode, runtime, reason?, extras, ownSessions, refused[] (names only), provisioned? (Windows) | [optional] |
| **processes** | [**RuntimeDocumentProcesses**](RuntimeDocumentProcesses.md) |  | [optional] |
| **containers** | **Array&lt;Hash&gt;** | every container the engine has, running or not: name, image, state, status, ports[], ours (a chatpanel- name), engine (0.19.1) | [optional] |
| **refused** | **Array&lt;Hash&gt;** | { id, engine, host, at } newest first | [optional] |
| **bridge** | [**RuntimeDocumentBridge**](RuntimeDocumentBridge.md) |  | [optional] |
| **engines** | **Hash&lt;String, Object&gt;** | podman/docker: { installed, version?, running?, machine? }; preferred; install? { command, url, note } | [optional] |
| **services** | **Hash&lt;String, Object&gt;** | Per catalogue service (searxng · reranker · opendecision): { id, label, image, container, port, blurb, provides, engine, state, url, configured, answering } — a capability container also { model, default, models: [{ id, label, lang, tier, approxMB, ramMB, licence, recommended, installed, note, unavailable?, ramNote? }], machine: { engineRamMB } } (gateway 0.22+). | [optional] |

## Example

```ruby
require 'chatpanel'

instance = ChatPanel::RuntimeDocument.new(
  sandbox: null,
  processes: null,
  containers: null,
  refused: null,
  bridge: null,
  engines: null,
  services: null
)
```

