# \RuntimeApi

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**runtime_engine**](RuntimeApi.md#runtime_engine) | **POST** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed).
[**runtime_plan**](RuntimeApi.md#runtime_plan) | **GET** /v1/runtime/plan | Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free.
[**runtime_service**](RuntimeApi.md#runtime_service) | **POST** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.
[**runtime_status**](RuntimeApi.md#runtime_status) | **GET** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services.



## runtime_engine

> models::RuntimeActionResult runtime_engine(name, runtime_engine_request)
Start the container engine (Podman — creates and starts its machine where one is needed).

`{ action: 'start' }`. Podman on macOS and Windows runs containers in a machine: made on first start (`podman machine init`), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** |  | [required] |
**runtime_engine_request** | Option<[**RuntimeEngineRequest**](RuntimeEngineRequest.md)> |  |  |

### Return type

[**models::RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## runtime_plan

> models::RuntimePlan runtime_plan(service, model, ctx, need_mb)
Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free.

Checked against what Heatwatch (an optional macOS tool on `127.0.0.1:7878`) says is reclaimable NOW, with the apps to close when it is short — or, without Heatwatch, against the machine's total memory, and `source` says which (`heatwatch` | `total-memory`). The KV cache is counted from the model's `config.json` when it is in the gateway's model cache (`contextCounted` says whether it was). A model the catalogue does not list needs `need_mb`. A native service's start makes the same check and refuses a model that does not fit what is free, unless the start says `force: true`. `runtime.heatwatch: false` stops the gateway asking Heatwatch. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**service** | Option<**String**> |  |  |[default to mlx]
**model** | Option<**String**> | A catalogue id or a Hugging Face owner/name; the service's current model when absent. |  |
**ctx** | Option<**i32**> | The context in tokens; the service's own window when absent. |  |
**need_mb** | Option<**i32**> | The model's peak memory while serving, for a model the catalogue does not list. |  |

### Return type

[**models::RuntimePlan**](RuntimePlan.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## runtime_service

> models::RuntimeActionResult runtime_service(id, runtime_service_request)
Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.

`{ action: 'start' | 'stop' }`. `start` brings the engine up if it is not, runs the service's container from its kit (SearXNG: `127.0.0.1:8888`, JSON on, the limiter off, a random secret, capabilities dropped; `reranker` on 8889 and `opendecision` on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (`search.searxng.url`; `capabilities.rerank` / `capabilities.decide`, so `/v1/rerank` and `/v1/decide` are served and listed). `stop` stops the container and clears what it set. `{ action: 'model', model }` (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (`GET /v1/runtime` `services.<id>.models`) or a Hugging Face `owner/name` — gated by the container ENGINE's memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** |  | [required] |
**runtime_service_request** | Option<[**RuntimeServiceRequest**](RuntimeServiceRequest.md)> |  |  |

### Return type

[**models::RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## runtime_status

> models::RuntimeDocument runtime_status()
The runtime — the process sandbox, what is running now, the container engine, the services.

One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. 

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::RuntimeDocument**](RuntimeDocument.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

