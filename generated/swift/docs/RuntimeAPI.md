# RuntimeAPI

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**runtimeEngine**](RuntimeAPI.md#runtimeengine) | **POST** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed).
[**runtimePlan**](RuntimeAPI.md#runtimeplan) | **GET** /v1/runtime/plan | Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free.
[**runtimeService**](RuntimeAPI.md#runtimeservice) | **POST** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it.
[**runtimeStatus**](RuntimeAPI.md#runtimestatus) | **GET** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services.


# **runtimeEngine**
```swift
    open class func runtimeEngine(name: Name_runtimeEngine, runtimeEngineRequest: RuntimeEngineRequest? = nil, completion: @escaping (_ data: RuntimeActionResult?, _ error: Error?) -> Void)
```

Start the container engine (Podman — creates and starts its machine where one is needed).

`{ action: 'start' }`. Podman on macOS and Windows runs containers in a machine: made on first start (`podman machine init`), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let name = "name_example" // String | 
let runtimeEngineRequest = runtime_engine_request(action: "action_example") // RuntimeEngineRequest |  (optional)

// Start the container engine (Podman — creates and starts its machine where one is needed).
RuntimeAPI.runtimeEngine(name: name, runtimeEngineRequest: runtimeEngineRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** |  | 
 **runtimeEngineRequest** | [**RuntimeEngineRequest**](RuntimeEngineRequest.md) |  | [optional] 

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runtimePlan**
```swift
    open class func runtimePlan(service: String? = nil, model: String? = nil, ctx: Int? = nil, needMb: Int? = nil, completion: @escaping (_ data: RuntimePlan?, _ error: Error?) -> Void)
```

Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free.

Checked against what Heatwatch (an optional macOS tool on `127.0.0.1:7878`) says is reclaimable NOW, with the apps to close when it is short — or, without Heatwatch, against the machine's total memory, and `source` says which (`heatwatch` | `total-memory`). The KV cache is counted from the model's `config.json` when it is in the gateway's model cache (`contextCounted` says whether it was). A model the catalogue does not list needs `need_mb`. A native service's start makes the same check and refuses a model that does not fit what is free, unless the start says `force: true`. `runtime.heatwatch: false` stops the gateway asking Heatwatch. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let service = "service_example" // String |  (optional) (default to "mlx")
let model = "model_example" // String | A catalogue id or a Hugging Face owner/name; the service's current model when absent. (optional)
let ctx = 987 // Int | The context in tokens; the service's own window when absent. (optional)
let needMb = 987 // Int | The model's peak memory while serving, for a model the catalogue does not list. (optional)

// Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free.
RuntimeAPI.runtimePlan(service: service, model: model, ctx: ctx, needMb: needMb) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String** |  | [optional] [default to &quot;mlx&quot;]
 **model** | **String** | A catalogue id or a Hugging Face owner/name; the service&#39;s current model when absent. | [optional] 
 **ctx** | **Int** | The context in tokens; the service&#39;s own window when absent. | [optional] 
 **needMb** | **Int** | The model&#39;s peak memory while serving, for a model the catalogue does not list. | [optional] 

### Return type

[**RuntimePlan**](RuntimePlan.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runtimeService**
```swift
    open class func runtimeService(id: Id_runtimeService, runtimeServiceRequest: RuntimeServiceRequest? = nil, completion: @escaping (_ data: RuntimeActionResult?, _ error: Error?) -> Void)
```

Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.

`{ action: 'start' | 'stop' }`. `start` brings the engine up if it is not, runs the service's container from its kit (SearXNG: `127.0.0.1:8888`, JSON on, the limiter off, a random secret, capabilities dropped; `reranker` on 8889 and `opendecision` on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (`search.searxng.url`; `capabilities.rerank` / `capabilities.decide`, so `/v1/rerank` and `/v1/decide` are served and listed). `stop` stops the container and clears what it set. `{ action: 'model', model }` (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (`GET /v1/runtime` `services.<id>.models`) or a Hugging Face `owner/name` — gated by the container ENGINE's memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel

let id = "id_example" // String | 
let runtimeServiceRequest = runtime_service_request(action: "action_example", model: "model_example", force: false) // RuntimeServiceRequest |  (optional)

// Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.
RuntimeAPI.runtimeService(id: id, runtimeServiceRequest: runtimeServiceRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** |  | 
 **runtimeServiceRequest** | [**RuntimeServiceRequest**](RuntimeServiceRequest.md) |  | [optional] 

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runtimeStatus**
```swift
    open class func runtimeStatus(completion: @escaping (_ data: RuntimeDocument?, _ error: Error?) -> Void)
```

The runtime — the process sandbox, what is running now, the container engine, the services.

One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ChatPanel


// The runtime — the process sandbox, what is running now, the container engine, the services.
RuntimeAPI.runtimeStatus() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RuntimeDocument**](RuntimeDocument.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

