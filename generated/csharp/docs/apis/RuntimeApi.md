# ChatPanel.Sdk.Api.RuntimeApi

All URIs are relative to *http://127.0.0.1:4320*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**RuntimeEngine**](RuntimeApi.md#runtimeengine) | **POST** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed). |
| [**RuntimePlan**](RuntimeApi.md#runtimeplan) | **GET** /v1/runtime/plan | Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free. |
| [**RuntimeRecipe**](RuntimeApi.md#runtimerecipe) | **GET** /v1/runtime/recipe | What a GGUF repo runs as on this machine, before anything is downloaded. |
| [**RuntimeService**](RuntimeApi.md#runtimeservice) | **POST** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it. |
| [**RuntimeStatus**](RuntimeApi.md#runtimestatus) | **GET** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services. |

<a id="runtimeengine"></a>
# **RuntimeEngine**
> RuntimeActionResult RuntimeEngine (string name, RuntimeEngineRequest runtimeEngineRequest = null)

Start the container engine (Podman — creates and starts its machine where one is needed).

`{ action: 'start' }`. Podman on macOS and Windows runs containers in a machine: made on first start (`podman machine init`), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **name** | **string** |  |  |
| **runtimeEngineRequest** | [**RuntimeEngineRequest**](RuntimeEngineRequest.md) |  | [optional]  |

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Started |  -  |
| **400** | Could not start; &#x60;install&#x60; when the engine is not installed. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="runtimeplan"></a>
# **RuntimePlan**
> RuntimePlan RuntimePlan (string service = null, string model = null, int ctx = null, int needMb = null)

Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free.

Checked against what Heatwatch (an optional macOS tool on `127.0.0.1:7878`) says is reclaimable NOW, with the apps to close when it is short — or, without Heatwatch, against the machine's total memory, and `source` says which (`heatwatch` | `total-memory`). The KV cache is counted from the model's `config.json` when it is in the gateway's model cache (`contextCounted` says whether it was). A model the catalogue does not list needs `need_mb`. A native service's start makes the same check and refuses a model that does not fit what is free, unless the start says `force: true`. `runtime.heatwatch: false` stops the gateway asking Heatwatch. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **service** | **string** |  | [optional] [default to &quot;mlx&quot;] |
| **model** | **string** | A catalogue id or a Hugging Face owner/name; the service&#39;s current model when absent. | [optional]  |
| **ctx** | **int** | The context in tokens; the service&#39;s own window when absent. | [optional]  |
| **needMb** | **int** | The model&#39;s peak memory while serving, for a model the catalogue does not list. | [optional]  |

### Return type

[**RuntimePlan**](RuntimePlan.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The plan. |  -  |
| **400** | Unknown service, a service that takes no model, or an unlisted model without &#x60;need_mb&#x60;. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="runtimerecipe"></a>
# **RuntimeRecipe**
> RuntimeRecipe RuntimeRecipe (string model, string service = null)

What a GGUF repo runs as on this machine, before anything is downloaded.

For llama.cpp: the repo's file list read from Hugging Face, and 64 KB of one weights file's header for its architecture. Answers the quant picked (Q4_K_M when none is named), every quant with its size and whether it fits in about three quarters of the machine's memory, the vision projector and the speculative-decoding draft the repo ships (with the `- -spec-type` its name means), and the layout chosen — `alt` when the repo also carries the weights as `.gguf_file` and only that layout is one the installed llama.cpp knows. A repo whose architecture the installed llama.cpp cannot load is a 400 with `code: unsupported_arch`. Nothing is saved; a start pulls the same recipe. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **model** | **string** | A Hugging Face owner/name, or owner/name:QUANT. |  |
| **service** | **string** |  | [optional] [default to &quot;llama&quot;] |

### Return type

[**RuntimeRecipe**](RuntimeRecipe.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The recipe. |  -  |
| **400** | Not llama.cpp, not a Hugging Face id, no such quant, or an architecture the installed llama.cpp cannot load (&#x60;code: unsupported_arch&#x60;). |  -  |
| **403** | Neither the extension&#39;s origin nor the gateway token. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="runtimeservice"></a>
# **RuntimeService**
> RuntimeActionResult RuntimeService (string id, RuntimeServiceRequest runtimeServiceRequest = null)

Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.

`{ action: 'start' | 'stop' }`. `start` brings the engine up if it is not, runs the service's container from its kit (SearXNG: `127.0.0.1:8888`, JSON on, the limiter off, a random secret, capabilities dropped; `reranker` on 8889 and `opendecision` on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (`search.searxng.url`; `capabilities.rerank` / `capabilities.decide`, so `/v1/rerank` and `/v1/decide` are served and listed). `stop` stops the container and clears what it set. `{ action: 'model', model }` (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (`GET /v1/runtime` `services.<id>.models`) or a Hugging Face `owner/name` — gated by the container ENGINE's memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** |  |  |
| **runtimeServiceRequest** | [**RuntimeServiceRequest**](RuntimeServiceRequest.md) |  | [optional]  |

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Done; &#x60;url&#x60; and &#x60;answering&#x60; on a start. |  -  |
| **400** | Could not; &#x60;install&#x60; when there is no engine. |  -  |
| **403** | The caller lacks the token this route needs. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="runtimestatus"></a>
# **RuntimeStatus**
> RuntimeDocument RuntimeStatus ()

The runtime — the process sandbox, what is running now, the container engine, the services.

One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. 


### Parameters
This endpoint does not need any parameter.
### Return type

[**RuntimeDocument**](RuntimeDocument.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The runtime document. |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

