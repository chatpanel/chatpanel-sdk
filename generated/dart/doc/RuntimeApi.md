# chatpanel.api.RuntimeApi

## Load the API package
```dart
import 'package:chatpanel/api.dart';
```

All URIs are relative to *http://127.0.0.1:4320*

Method | HTTP request | Description
------------- | ------------- | -------------
[**runtimeEngine**](RuntimeApi.md#runtimeengine) | **POST** /v1/runtime/engines/{name} | Start the container engine (Podman — creates and starts its machine where one is needed).
[**runtimePlan**](RuntimeApi.md#runtimeplan) | **GET** /v1/runtime/plan | Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free.
[**runtimeRecipe**](RuntimeApi.md#runtimerecipe) | **GET** /v1/runtime/recipe | What a GGUF repo runs as on this machine, before anything is downloaded.
[**runtimeService**](RuntimeApi.md#runtimeservice) | **POST** /v1/runtime/services/{id} | Start or stop a catalogue service, or pick a capability container&#39;s model — each runs loopback-only and the gateway points at it.
[**runtimeStatus**](RuntimeApi.md#runtimestatus) | **GET** /v1/runtime | The runtime — the process sandbox, what is running now, the container engine, the services.


# **runtimeEngine**
> RuntimeActionResult runtimeEngine(name, runtimeEngineRequest)

Start the container engine (Podman — creates and starts its machine where one is needed).

`{ action: 'start' }`. Podman on macOS and Windows runs containers in a machine: made on first start (`podman machine init`), then started. Linux Podman is rootless and needs nothing. Docker is not started by the gateway — the response says so. 

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getRuntimeApi();
final String name = name_example; // String | 
final RuntimeEngineRequest runtimeEngineRequest = ; // RuntimeEngineRequest | 

try {
    final response = api.runtimeEngine(name, runtimeEngineRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuntimeApi->runtimeEngine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **runtimeEngineRequest** | [**RuntimeEngineRequest**](RuntimeEngineRequest.md)|  | [optional] 

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runtimePlan**
> RuntimePlan runtimePlan(service, model, ctx, needMb)

Will this local model run now? Weights + the KV cache for the context + 10% headroom, against what is free.

Checked against what Heatwatch (an optional macOS tool on `127.0.0.1:7878`) says is reclaimable NOW, with the apps to close when it is short — or, without Heatwatch, against the machine's total memory, and `source` says which (`heatwatch` | `total-memory`). The KV cache is counted from the model's `config.json` when it is in the gateway's model cache (`contextCounted` says whether it was). A model the catalogue does not list needs `need_mb`. A native service's start makes the same check and refuses a model that does not fit what is free, unless the start says `force: true`. `runtime.heatwatch: false` stops the gateway asking Heatwatch. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getRuntimeApi();
final String service = service_example; // String | 
final String model = model_example; // String | A catalogue id or a Hugging Face owner/name; the service's current model when absent.
final int ctx = 56; // int | The context in tokens; the service's own window when absent.
final int needMb = 56; // int | The model's peak memory while serving, for a model the catalogue does not list.

try {
    final response = api.runtimePlan(service, model, ctx, needMb);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuntimeApi->runtimePlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**|  | [optional] [default to 'mlx']
 **model** | **String**| A catalogue id or a Hugging Face owner/name; the service's current model when absent. | [optional] 
 **ctx** | **int**| The context in tokens; the service's own window when absent. | [optional] 
 **needMb** | **int**| The model's peak memory while serving, for a model the catalogue does not list. | [optional] 

### Return type

[**RuntimePlan**](RuntimePlan.md)

### Authorization

[gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runtimeRecipe**
> RuntimeRecipe runtimeRecipe(model, service)

What a GGUF repo runs as on this machine, before anything is downloaded.

For llama.cpp: the repo's file list read from Hugging Face, and 64 KB of one weights file's header for its architecture. Answers the quant picked (Q4_K_M when none is named), every quant with its size and whether it fits in about three quarters of the machine's memory, the vision projector and the speculative-decoding draft the repo ships (with the `--spec-type` its name means), and the layout chosen — `alt` when the repo also carries the weights as `.gguf_file` and only that layout is one the installed llama.cpp knows. A repo whose architecture the installed llama.cpp cannot load is a 400 with `code: unsupported_arch`. Nothing is saved; a start pulls the same recipe. 

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getRuntimeApi();
final String model = model_example; // String | A Hugging Face owner/name, or owner/name:QUANT.
final String service = service_example; // String | 

try {
    final response = api.runtimeRecipe(model, service);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuntimeApi->runtimeRecipe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| A Hugging Face owner/name, or owner/name:QUANT. | 
 **service** | **String**|  | [optional] [default to 'llama']

### Return type

[**RuntimeRecipe**](RuntimeRecipe.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runtimeService**
> RuntimeActionResult runtimeService(id, runtimeServiceRequest)

Start or stop a catalogue service, or pick a capability container's model — each runs loopback-only and the gateway points at it.

`{ action: 'start' | 'stop' }`. `start` brings the engine up if it is not, runs the service's container from its kit (SearXNG: `127.0.0.1:8888`, JSON on, the limiter off, a random secret, capabilities dropped; `reranker` on 8889 and `opendecision` on 8890 with the shared model cache mounted, gateway 0.20+) — the first start pulls the image — waits for it to answer, and sets the config that points the gateway at it (`search.searxng.url`; `capabilities.rerank` / `capabilities.decide`, so `/v1/rerank` and `/v1/decide` are served and listed). `stop` stops the container and clears what it set. `{ action: 'model', model }` (gateway 0.22+) picks the model a capability container runs — an id from its catalogue (`GET /v1/runtime` `services.<id>.models`) or a Hugging Face `owner/name` — gated by the container ENGINE's memory (a model it cannot hold is refused with the command that raises the ceiling); the container is re-created with the pick and restarted when it ran. 

### Example
```dart
import 'package:chatpanel/api.dart';
// TODO Configure API key authorization: tokenHeader
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('tokenHeader').apiKeyPrefix = 'Bearer';

final api = Chatpanel().getRuntimeApi();
final String id = id_example; // String | 
final RuntimeServiceRequest runtimeServiceRequest = ; // RuntimeServiceRequest | 

try {
    final response = api.runtimeService(id, runtimeServiceRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuntimeApi->runtimeService: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **runtimeServiceRequest** | [**RuntimeServiceRequest**](RuntimeServiceRequest.md)|  | [optional] 

### Return type

[**RuntimeActionResult**](RuntimeActionResult.md)

### Authorization

[tokenHeader](../README.md#tokenHeader), [gatewayToken](../README.md#gatewayToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runtimeStatus**
> RuntimeDocument runtimeStatus()

The runtime — the process sandbox, what is running now, the container engine, the services.

One document for Settings › Runtime. `sandbox` is the bridge's own (`/health.sandbox`: enabled, mode `open` | `allowlist` | `none`, the runtime found, the reason when none, the global `extras`, whether a process can get a session of its own, and `refused` — the last hosts any process was refused, names only). `processes` lists every local MCP server running for the user with its sandbox record and the hosts it was refused, and the warm agent processes. `engines` says which container engine exists (`podman` first, `docker`) and whether it can run a container now; when none does, `install` carries the command for this platform — shown to the person, never run by the gateway. `services` is the catalogue: `searxng` with its state (`no-engine` | `engine-stopped` | `absent` | `stopped` | `running`), its loopback URL and whether it answers. 

### Example
```dart
import 'package:chatpanel/api.dart';

final api = Chatpanel().getRuntimeApi();

try {
    final response = api.runtimeStatus();
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuntimeApi->runtimeStatus: $e\n');
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

