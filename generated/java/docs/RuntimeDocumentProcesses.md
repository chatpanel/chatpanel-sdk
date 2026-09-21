

# RuntimeDocumentProcesses


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**all** | **List&lt;Map&lt;String, Object&gt;&gt;** | every process running for the user — the bridge&#39;s (kind agent | warm | mcp | probe) and the gateway&#39;s own workers (kind worker): id, kind, engine, command (basename), label, pid, since, sandbox (the record), refused[] — never argv or env (0.19.1) |  [optional] |
|**localMcp** | **List&lt;Map&lt;String, Object&gt;&gt;** | id, command (basename), pid, since, sandbox (the record), refused[] — never argv or env |  [optional] |
|**warm** | **Map&lt;String, Object&gt;** | A domain object whose shape is owned by &#x60;@chatpanel/events&#x60;; the SDK carries it as-is. |  [optional] |



